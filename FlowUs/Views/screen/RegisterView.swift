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

    var body: some View {
        RegisterViewScrollView(content: {
            BackBar()
            RegisterHeading()
                .frame(width: UIScreen.screenWidth, height: 60)
                .padding(.top, 12)
            RegisterFirstSection(firstInput: firstInput,
                                 secondInput: secondInput,
                                 thirdInput: thirdInput)
            HStack {
                CommonText(
                    text: "register.mail.verify".l10n(),
                    semibold: true)
                    .foregroundColor(.white)
                Spacer()
            }.frame(width: UIScreen.screenWidth - 15)
                .padding(.top, 8)
            HStack {
                SelectionInput(
                    items: ["Male", "Female", "Other"],
                    text: "Choose sex",
                    color: .white)
            }
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

struct RegisterFirstSection: View {
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: RegisterView())
    }
}
