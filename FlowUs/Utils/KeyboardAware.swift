//
//  KeyboardAware.swift
//  FlowUs
//
//  Created by Lucas Goldner on 14.04.22.
//

import SwiftUI
import UIKit

public class KeyboardInfo: ObservableObject {
    public static var shared = KeyboardInfo()

    @Published public var height: CGFloat = 0

    private init() {
        NotificationCenter
            .default
            .addObserver(self,
                         selector: #selector(self.keyboardChanged),
                         name: UIApplication.keyboardWillShowNotification,
                         object: nil)
        NotificationCenter
            .default
            .addObserver(self,
                         selector: #selector(self.keyboardChanged),
                         name: UIResponder.keyboardWillHideNotification,
                         object: nil)
        NotificationCenter
            .default
            .addObserver(self,
                         selector: #selector(self.keyboardChanged),
                         name: UIResponder.keyboardWillChangeFrameNotification,
                         object: nil)
    }

    @objc func keyboardChanged(notification: Notification) {
        if notification.name == UIApplication.keyboardWillHideNotification {
            self.height = 0
        } else {
            self.height = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height ?? 0
        }
    }
}

struct KeyboardAware: ViewModifier {
    @ObservedObject private var keyboard = KeyboardInfo.shared

    func body(content: Content) -> some View {
        content
            .padding(.bottom, self.keyboard.height)
            .edgesIgnoringSafeArea(self.keyboard.height > 0 ? .bottom : [])
            .animation(.easeOut, value: false)
    }
}
