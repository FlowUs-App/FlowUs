//
//  Extensions.swift
//  FlowUs
//
//  Created by Lucas Goldner on 11.04.22.
//

import Foundation
import UIKit
import SwiftUI

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let aVal, rVal, gVal, bVal: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (aVal, rVal, gVal, bVal) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (aVal, rVal, gVal, bVal) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (aVal, rVal, gVal, bVal) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (aVal, rVal, gVal, bVal) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(rVal) / 255,
            green: Double(gVal) / 255,
            blue: Double(bVal) / 255,
            opacity: Double(aVal) / 255
        )
    }
}
