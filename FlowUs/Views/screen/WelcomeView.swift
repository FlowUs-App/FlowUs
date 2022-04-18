//
//  WelcomeView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import SwiftUI

struct WelcomeView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            CommonBackground()
            ScrollView {
                ZStack {
                    FirstLayer()
                    FirstLayer().mask(Rectangle()
                        .frame(width: 344, height: 272)
                        .padding(.top, 24)
                    ).blur(radius: 40)
                    SecondLayer()
                    ThirdLayer()
                }
                WelcomeText()
                HStack(spacing: 40) {
                    SecondaryButtonS(action: dummyFunction, text: "Sign In")
                    PrimaryButtonS(action: dummyFunction, text: "Join now")
                }.padding(.top, 12)
            }.ignoresSafeArea()
        }
    }
}

struct FirstLayer: View {
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

struct SecondLayer: View {
    var body: some View {
        GlasmorphicCard(content: {
            Icon(path: "ScreenAssets/Welcome/ComputerGuy")
                .frame(width: 264, height: 264)
                .padding(.horizontal, 32)
        }).padding(.horizontal, 40)
    }
}

struct ThirdLayer: View {
    var body: some View {
        Icon(path: "ScreenAssets/Welcome/GreenBall")
            .frame(width: 44, height: 44)
            .padding(.trailing, 280)
            .padding(.bottom, 112)
        Icon(path: "ScreenAssets/Welcome/OrangeRing")
            .frame(width: 112, height: 112)
            .padding(.leading, 316)
            .padding(.bottom, 40)
        Icon(path: "ScreenAssets/Welcome/BlueCube")
            .frame(width: 78, height: 78)
            .padding(.top, 296)
            .padding(.trailing, 316)
    }
}

struct WelcomeText: View {
    var body: some View {
        HStack {
            HeadingBGradient(text: "Welcome to\nFlowUs",
                             gradient: LinearGradient(
                                 colors: [.init(hex: "E100FF"), .init(hex: "5F3DDD")],
                                 startPoint: .top,
                                 endPoint: .bottom
                             )).padding(.leading, 15)
            Spacer()
        }.frame(width: UIScreen.screenWidth)
            .padding(.bottom, 12)
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                CommonText(text: "Hey,")
                VStack(alignment: .leading, spacing: 0) {
                    CommonText(text: "my name is **Lucas Goldner** welcome to **FlowUs.**")
                    HStack {
                        CommonText(text: "Thank you for downloading the app")
                        Icon(path: "Icons/Fun").frame(width: 24, height: 24).padding(.bottom, 4)
                    }
                    CommonText(text: "I kind of look like the guy on the top")
                    CommonText(text: "with the computer. My goal is to establish")
                    CommonText(text: "a community full of supportive individuals")
                    CommonText(text: "that share the goal of sel-improvement.")
                    CommonText(text: "If you want to be part of it make sure")
                    CommonText(text: "to register an account.")
                }
            }
            Spacer()
        }.padding(.leading, 15)
            .frame(width: UIScreen.screenWidth)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: WelcomeView())
    }
}
