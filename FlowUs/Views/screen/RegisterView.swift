//
//  RegisterView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import SwiftUI
import UIPilot

struct RegisterView: View {
    @EnvironmentObject var pilot: UIPilot<AppRoute>
    var body: some View {
        ZStack {
            LinearGradient(gradient:
                Gradient(
                    colors: [.init(hex: "0D6FCA"),
                             .init(hex: "26006F"),
                             .init(hex: "4B0384")]),
                startPoint: .top,
                endPoint: .bottom).ignoresSafeArea(.all)
            ScrollView {
                BackBar()
                RegisterHeading()
            }
        }
    }
}

struct RegisterHeading: View {
    var body: some View {
        Text("LOL")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: RegisterView())
    }
}
