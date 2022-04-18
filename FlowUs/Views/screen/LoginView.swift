//
//  LoginView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import SwiftUI
import UIPilot

struct LoginView: View {
    @EnvironmentObject var pilot: UIPilot<AppRoute>
    var body: some View {
        Text("Login")
        Button("Go back", action: {
            pilot.pop()
        })
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
