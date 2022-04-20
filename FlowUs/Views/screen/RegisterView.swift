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

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                BackBar()
                RegisterHeading().frame(width: UIScreen.screenWidth, height: 60)
                    .padding(.top, 20)
            }.padding(.top, 28)
                .background(LinearGradient(gradient:
                    Gradient(
                        colors: [.init(hex: "0D6FCA"),
                                 .init(hex: "26006F"),
                                 .init(hex: "4B0384")]),
                    startPoint: .top,
                    endPoint: .bottom).frame(height: 1700))
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: RegisterView())
    }
}
