//
//  BackBar.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import SwiftUI
import UIPilot

struct BackBar: View {
    @EnvironmentObject var pilot: UIPilot<AppRoute>
    var body: some View {
        HStack {
            CircleIconButton(content: {
                Icon(path: "Icons/Back")
            }, action: { pilot.pop() },
            shadowColor: .pink, width: 32, height: 32)
                .padding(.leading, 8)
            Spacer()
        }
        .padding(.top, UIDevice.current.hasNotch ? -8 : 0)
    }
}

struct BackBar_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content:
            ScrollView {
                BackBar()
            })
    }
}
