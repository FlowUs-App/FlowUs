//
//  WelcomeView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import L10n_swift
import SwiftUI
import UIPilot

struct WelcomeView: View {
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var pilot: UIPilot<AppRoute>

    private func navigateToLogin() {
        pilot.push(.Login)
    }

    private func navigateToRegister() {
        pilot.push(.Register)
    }

    var body: some View {
        ZStack {
            CommonBackground()
            ScrollView(showsIndicators: false) {
                ZStack {
                    WelcomeFirstLayer()
                    WelcomeFirstLayer().mask(Rectangle()
                        .frame(width: 344, height: 272)
                        .padding(.top, 24)
                    ).blur(radius: 40)
                    WelcomeSecondLayer()
                    WelcomeThirdLayer()
                }
                WelcomeText()
                HStack(spacing: 40) {
                    SecondaryButtonS(action: navigateToLogin, text: "welcome.login".l10n())
                        .accessibilityIdentifier("Login")
                    PrimaryButtonS(action: navigateToRegister, text: "welcome.register".l10n())
                        .accessibilityIdentifier("JoinNow")
                }.padding(.vertical, 12)
            }.ignoresSafeArea()
        }
    }
}

struct WelcomeFirstLayer: View {
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                PurpleBlob()
                    .padding(.top, 96)
                    .padding(.trailing, 40)
            }
            HStack {
                YellowRectangle()
                    .padding(.bottom, 140)
                    .padding(.trailing, 280)
                Spacer()
            }
        }.padding(.all, -40)
    }
}

struct WelcomeSecondLayer: View {
    @ObservedObject var manager = MotionManager()
    var body: some View {
        GlasmorphicCard(content: {
            Icon(path: "ScreenAssets/Welcome/ComputerGuy")
                .frame(width: 264, height: 264)
                .padding(.horizontal, 32)
        }).padding(.horizontal, 40)
            .modifier(ParallaxMotionModifier(manager: manager, magnitude: 10))
    }
}

struct WelcomeThirdLayer: View {
    @ObservedObject var manager = MotionManager()
    var body: some View {
        Icon(path: "ScreenAssets/Welcome/GreenBall")
            .frame(width: 44, height: 44)
            .padding(.trailing, 280)
            .padding(.bottom, 112)
            .modifier(ParallaxMotionModifier(manager: manager, magnitude: 30))
        Icon(path: "ScreenAssets/Welcome/OrangeRing")
            .frame(width: 112, height: 112)
            .padding(.leading, 316)
            .padding(.bottom, 40)
            .modifier(ParallaxMotionModifier(manager: manager, magnitude: 15))
        Icon(path: "ScreenAssets/Welcome/BlueCube")
            .frame(width: 78, height: 78)
            .padding(.top, 296)
            .padding(.trailing, 316)
            .modifier(ParallaxMotionModifier(manager: manager, magnitude: 20))
    }
}

struct WelcomeText: View {
    let welcome = "welcome.to.flowus.welcome".l10n() + "\n" + "welcome.to.flowus".l10n()

    var body: some View {
        HStack {
            HeadingBGradient(text: welcome,
                             gradient: LinearGradient(
                                 colors: [.init(hex: "E100FF"), .init(hex: "5F3DDD")],
                                 startPoint: .top,
                                 endPoint: .bottom
                             ))
                             .padding(.leading, 15)

            Spacer()
        }.frame(width: UIScreen.screenWidth)
            .padding(.bottom, 12)
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                CommonText(text: "welcome.hey".l10n())
                    .padding(.bottom, 4)
                VStack(alignment: .leading, spacing: 0) {
                    CommonText(text: "welcome.my.name.is.lucas".l10n())
                        .padding(.bottom, 4)
                    HStack {
                        CommonText(text: "welcome.thx.for.download".l10n())
                        Icon(path: "Icons/Fun")
                            .frame(width: 20, height: 20)
                    }.padding(.bottom, 4)
                    CommonText(text: "welcome.text.rest".l10n())
                }.padding(.trailing, 4)
            }
            Spacer()
        }.padding(.leading, 15)
            .frame(width: UIScreen.screenWidth)
    }
}

// struct WelcomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        DefaultPreview(content: WelcomeView())
//    }
// }
