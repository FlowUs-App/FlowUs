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
    @StateObject var data: VerifyOO = .init()

    private func printNumbers() {
        print(data.getCurrentNumbers())
    }

    var body: some View {
        ZStack {
            CommonBackground()
            ScrollView {
                ZStack {
                    DarkBlueBob()
                        .padding(.top, -UIScreen.screenWidth + 156)
                        .frame(width: UIScreen.screenWidth)
                    VStack {
                        BackBar()
                            .frame(width: UIScreen.screenWidth)

                        HStack {
                            HeadingB(text: "verify.header".l10n())
                                .foregroundColor(.white)
                            Icon(path: "ScreenAssets/Verify/YellowCone")
                                .frame(width: 88, height: 96)
                                .padding(.bottom, 20)
                        }.padding(.top, -32)
                        CommonText(text: "verify.description".l10n())
                            .padding(.horizontal, 60)
                            .foregroundColor(.white)
                            .padding(.top, -32)
                        MagicNumersInput(magicNumbers: $data.magicNumbers,
                                         magicNumberFields: $data.magicNumberFields,
                                         color: .white)
                            .padding(.top, 52)
                        Icon(resize: true, path: "ScreenAssets/Verify/Saturn")
                            .frame(width: 380, height: 380)
                            .padding(.top, -72)
                            .padding(.leading, 40)
                            .rotationEffect(Angle(degrees: -15))
                        PrimaryButton(action: printNumbers,
                                      text: "register.step.two".l10n())
                            .frame(width: UIScreen.screenWidth)
                    }
                }
            }.frame(width: UIScreen.screenWidth)
        }
    }
}

// struct VerifyView_Previews: PreviewProvider {
//    static var previews: some View {
//        DefaultPreview(content: VerifyView())
//    }
// }
