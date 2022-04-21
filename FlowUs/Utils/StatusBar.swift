//
//  StatusBar.swift
//  FlowUs
//
//  Created by Lucas Goldner on 22.04.22.
//

import UIKit
import SwiftUI

struct LightStatusBarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onAppear {
                UIApplication.shared.statusBarStyle = .lightContent
            }
            .onDisappear {
                UIApplication.shared.statusBarStyle = .default
            }
    }
}

extension View {
    func enableLightStatusBar() -> some View {
        self.modifier(LightStatusBarModifier())
    }
}
