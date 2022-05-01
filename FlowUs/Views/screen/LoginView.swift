//
//  LoginView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import L10n_swift
import SwiftUI
import UIPilot

struct LoginView: View {
    @StateObject var loginOO: LoginOO = .init()
    @EnvironmentObject var pilot: UIPilot<AppRoute>
    @Environment(\.colorScheme) var colorScheme
    @State var firstInput: String = ""
    @State var secondInput: String = ""

    private func navigateToRegister() {
        pilot.push(.Register)
    }

    var body: some View {
        ZStack {
            CommonBackground()
            ScrollView(showsIndicators: false) {
                BackBar()
                    .frame(width: UIScreen.screenWidth)
                    .padding(.top, 12)
                LoginOpening(loginOO: loginOO)
                LoginMidSection(
                    firstInput: firstInput, secondInput: secondInput)
                    .padding(.top, 16)
                PrimaryButton(action: dummyFunction,
                              text: "login.login".l10n())
                    .frame(width: UIScreen.screenWidth)
                Button(action: navigateToRegister, label: {
                    CommonText(text: "login.not.a.member".l10n())
                        .foregroundColor(colorScheme == .light ? .black : .white)
                }).padding(.vertical, 16)
                    .buttonStyle(ScaleButtonStyle())
            }.frame(width: UIScreen.screenWidth)
                .keyboardAware()
        }
    }
}

struct LoginOpening: View {
    let loginOO: LoginOO
    var body: some View {
        HStack {
            HeadingB(text: "login.welcome.again".l10n())
            CircleIconButton(content: {
                Icon(path: "Icons/Frog")
            }, action: loginOO.playFrogSound,
            shadowColor: .green,
            width: 32,
            height: 32)
        }
        CommonText(text: "login.welcome.back".l10n())
    }
}

struct LoginMidSection: View {
    @Environment(\.colorScheme) var colorScheme
    var firstInput: String
    var secondInput: String

    var body: some View {
        ZStack {
            GreenBlob()
            Icon(path: "ScreenAssets/Login/Biker")
                .frame(width: 780)
                .padding(.top, -320)
                .padding(.leading, 280)
            ZStack {
                LoginMidSectionBlurredItems()
                VStack {
                    TextInputDouble(inputFirst: firstInput,
                                    inputSecond: secondInput,
                                    color: colorScheme == .light ? .black : .white,
                                    placeholderColor:
                                    colorScheme == .light ? .black.opacity(0.75) : .white.opacity(0.75),
                                    placeholderTextFirst: "login.email".l10n(),
                                    placeholderTextSecond: "login.password".l10n())

                    Button(action: dummyFunction, label: {
                        CommonText(text: "login.forgot.password".l10n(), semibold: true)
                            .foregroundColor(.white)
                    }).padding(.leading, 220)
                        .buttonStyle(ScaleButtonStyle())
                }.padding(.top, 40)
                HStack {
                    Spacer()
                    CircleIconButton(content: {
                        Icon(path: "Icons/Eye")
                    }, action: dummyFunction,
                    shadowColor: .yellow,
                    width: 32,
                    height: 32)
                        .padding(.trailing, 16)
                        .padding(.top, 64)
                }.frame(width: UIScreen.screenWidth)
                Icon(path: "ScreenAssets/Login/YellowBall")
                    .frame(width: 84, height: 84)
                    .padding(.top, 180)
                    .padding(.trailing, 280)
            }.frame(width: UIScreen.screenWidth)
        }.zIndex(-10)
    }
}

struct LoginMidSectionBlurredItems: View {
    var body: some View {
        GreenBlob().mask(Rectangle().frame(width: UIScreen.screenWidth - 20, height: 112))
            .blur(radius: 20)
        Icon(path: "ScreenAssets/Login/Biker")
            .frame(width: 780, height: 780)
            .padding(.top, -396)
            .padding(.leading, 280)
            .mask(Rectangle()
                .frame(
                    width: UIScreen.screenWidth - 40, height: 100)
            ).blur(radius: 20)
            .frame(width: UIScreen.screenWidth)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: LoginView())
    }
}
