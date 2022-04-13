//
//  TextInputs.swift
//  FlowUs
//
//  Created by Lucas Goldner on 13.04.22.
//

import SwiftUI
import SwiftUIX

struct TextInputs: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ZStack {
            VisualEffectBlurView(blurStyle: .systemUltraThinMaterial, vibrancyStyle: .fill, content: {})
        }
        .frame(width: .infinity, height: 250)
        .background(colorScheme == .light ?
            Color.clear : Color(hex: "212C4F")).opacity(0.8)
        .mask(
            RoundedRectangle(cornerRadius: 15, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .stroke(lineWidth: 0.5)
                .fill(.white)
                .opacity(
                    colorScheme == .light ?
                        0.5 : 0.35))
        .shadow(color: .black.opacity(0.2), x: 0, y: 20, blur: 20)
        .padding()
    }
}

struct TextInputs_Previews: PreviewProvider {
    static var previews: some View {
        TextInputs()
    }
}
