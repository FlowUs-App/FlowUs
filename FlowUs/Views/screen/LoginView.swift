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
    @EnvironmentObject var pilot: UIPilot<AppRoute>

    var body: some View {
        ScrollView {
            BackBar()
            LoginOpening()
        }
    }
}

struct LoginOpening: View {
    var body: some View {
        HStack {
            HeadingB(text: "login.welcome.again".l10n())
            CircleIconButton(content: {
                Icon(path: "Icons/Frog")
            }, action: dummyFunction,
            shadowColor: .green,
            width: 32,
            height: 32)
        }
        CommonText(text: "login.welcome.back".l10n())
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: LoginView())
    }
}
