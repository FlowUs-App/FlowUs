//
//  Previews.swift
//  FlowUs
//
//  Created by Lucas Goldner on 11.04.22.
//

import SwiftUI

struct LinearGradientPreview: View {
    var body: some View {
        LinearGradient(gradient:
            Gradient(colors: [.init(hexadecimal: "4624C2"), .init(hexadecimal: "7F5BFF")]), startPoint: .bottomTrailing, endPoint: .topLeading)
    }
}
