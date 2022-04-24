//
//  RegisterView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import L10n_swift
import SwiftUI
import UIPilot

struct RegisterView: View {
    @EnvironmentObject var pilot: UIPilot<AppRoute>
    @State var firstInput: String = ""
    @State var secondInput: String = ""
    @State var thirdInput: String = ""
    @State var date: Date = .init()
    @State var passwordInput: String = ""
    @State var repeatPasswordInput: String = ""

    var body: some View {
        RegisterViewScrollView(content: {
            BackBar()
            RegisterHeading()
                .frame(width: UIScreen.screenWidth, height: 60)
                .padding(.top, 12)
            RegisterUserInfoSection(firstInput: firstInput,
                                    secondInput: secondInput,
                                    thirdInput: thirdInput)
            RegisterBirthInfo(date: date)
            RegisterPassword(password: passwordInput,
                             repeatPassword: repeatPasswordInput)
                .frame(width: UIScreen.screenWidth)
            VStack {
                SecondaryButton(
                    action: dummyFunction,
                    text: "register.step.one".l10n(),
                    shadowsEnabled: false)
            }
            .padding(.top, 24)
            .padding(.bottom, 48)
        }).enableLightStatusBar()
    }
}

struct RegisterViewScrollView<Content: View>: View {
    @ViewBuilder var content: Content
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                content
            }.padding(.top, UIDevice.current.hasNotch ? 48 : 24)
                .background(LinearGradient(gradient:
                    Gradient(
                        colors: [.init(hex: "0D6FCA"),
                                 .init(hex: "26006F"),
                                 .init(hex: "4B0384")]),
                    startPoint: .top,
                    endPoint: .bottom)
                    .frame(height: 1000))
        }.background(VStack(spacing: 0) {
            Color(hex: "0D6FCA")
            Color(hex: "4B0384")
        }).ignoresSafeArea()
    }
}

struct RegisterHeading: View {
    var body: some View {
        ZStack {
            Icon(resize: true, path: "ScreenAssets/Register/Spring-1")
                .frame(width: 180, height: 180)
                .padding(.leading, 320)
            HeadingB(text: "register.creat.account".l10n())
                .foregroundStyle(.white)
        }
    }
}

struct RegisterUserInfoSection: View {
    var firstInput: String = ""
    var secondInput: String = ""
    var thirdInput: String = ""
    var body: some View {
        ZStack {
            Icon(resize: false, path: "ScreenAssets/Register/Explore")
                .padding(.leading, 10)
            TextInputTriple(inputFirst: firstInput,
                            inputSecond: secondInput,
                            inputThird: thirdInput,
                            color: .white,
                            placeholderTextFirst: "register.real.name".l10n(),
                            placeholderTextSecond: "register.user.name".l10n(),
                            placeholderTextThird: "register.user.mail".l10n())
                .padding(.top, 328)
            Icon(resize: true, path: "ScreenAssets/Register/Spring-2")
                .frame(width: 160, height: 160)
                .padding(.trailing, 360)
                .padding(.top, 152)
                .frame(height: 150)
            CountryInput(width: 60, height: 28,
                         placeholderText: "register.country".l10n())
                .padding(.top, 328)
                .padding(.leading, 292)
                .frame(width: 60, height: 28).blur(radius: 10)
            CountryInput(width: 60, height: 28,
                         placeholderText: "register.country".l10n())
                .padding(.top, 328)
                .padding(.leading, 292)
                .frame(width: 60, height: 28)
        }.frame(width: UIScreen.screenWidth - 15)
            .padding(.top, -152)
    }
}

struct RegisterBirthInfo: View {
    var date: Date
    var body: some View {
        HStack {
            CommonText(
                text: "register.mail.verify".l10n(),
                semibold: true)
                .foregroundColor(.white)
            Spacer()
        }
        .frame(width: UIScreen.screenWidth - 15)
        .padding(.top, 8)

        HStack {
            VStack {
                DateInput(date: date,
                          width: UIScreen.screenWidth / 3.2,
                          height: 40,
                          placeholderText: "register.birthday".l10n())
                    .padding(.top, 52)
                Icon(resize: true, path: "ScreenAssets/Register/CurvyLine")
                    .frame(width: 180, height: 140)
            }
            SelectionInput(
                items: ["Male", "Female", "Other"],
                text: "Choose sex",
                color: .white)
                .padding(.trailing, 12)
        }
        .padding(.top, -16)
    }
}

struct RegisterPassword: View {
    var password: String
    var repeatPassword: String

    var body: some View {
        ZStack {
            TextInputDouble(inputFirst: password,
                            inputSecond: repeatPassword,
                            placeholderTextFirst: "Password",
                            placeholderTextSecond: "Repeat Password")
            HStack {
                Spacer()
                CircleIconButton(content: {
                    Icon(path: "Icons/Eye")
                }, action: dummyFunction,
                shadowColor: .yellow,
                width: 32,
                height: 32)
                    .padding(.trailing, 16)
                    .padding(.top, -52)
            }.frame(width: UIScreen.screenWidth)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: RegisterView())
    }
}
