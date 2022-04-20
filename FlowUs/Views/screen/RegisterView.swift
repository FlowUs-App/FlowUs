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
                RegisterHeading()
                RegisterHeading()
                RegisterHeading()
                RegisterHeading()
                RegisterHeading()
                RegisterHeading()
                RegisterHeading()
                RegisterHeading()
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
        HeadingB(text: "register.creat.account".l10n())
        HeadingB(text: "register.creat.account".l10n())
        HeadingB(text: "register.creat.account".l10n())
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: RegisterView())
    }
}
