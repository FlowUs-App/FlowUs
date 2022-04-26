//
//  VerifyView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 24.04.22.
//

import L10n_swift
import SwiftUI
import UIPilot

struct VerifyView: View {
    @EnvironmentObject var pilot: UIPilot<AppRoute>

    var body: some View {
        ZStack {
            CommonBackground()
            DarkBlueBob()
                .padding(.top, -UIScreen.screenWidth + 100)
            ScrollView {
                BackBar()
                    .frame(width: UIScreen.screenWidth)
                    .padding(.top, -10)
                HStack {
                    HeadingB(text: "verify.header".l10n())
                        .foregroundColor(.white)
                    Icon(path: "ScreenAssets/Verify/YellowCone")
                        .frame(width: 88, height: 96)
                        .padding(.bottom, 20)
                }.padding(.top, -28)
                CommonText(text: "verify.description".l10n())
                    .padding(.horizontal, 100)
                    .foregroundColor(.white)
                    .padding(.top, -32)
                MagicNumersInput()
                    .padding(.top, 52)
                Icon(resize: true, path: "ScreenAssets/Verify/Saturn")
                    .frame(width: 380, height: 380)
                    .padding(.top, -60)
                    .padding(.leading, 40)
                    .rotationEffect(Angle(degrees: -15))
                PrimaryButton(action: dummyFunction, text: "register.step.two".l10n())
                    .frame(width: UIScreen.screenWidth)
            }
        }
    }
}

struct VerifyView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: VerifyView())
    }
}
