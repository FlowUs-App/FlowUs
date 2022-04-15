//
//  IconButtons.swift
//  FlowUs
//
//  Created by Lucas Goldner on 15.04.22.
//

import SwiftUI
import SwiftUIX

struct CircleIconButton<Content: View>: View {
    @Environment(\.colorScheme) var colorScheme
    @ViewBuilder var content: Content
    var shadowColor: Color = .black

    var body: some View {
        ZStack {
            VisualEffectBlurView(blurStyle: .systemUltraThinMaterial, vibrancyStyle: .fill, content: {})
            content.frame(width: 50, height: 50)
        }
        .frame(width: 65, height: 65)
        .background(colorScheme == .light ?
            Color.clear : Color(hex: "212C4F")).opacity(0.8)
        .mask(
            Circle())
        .overlay(
            Circle()
                .stroke(lineWidth: 0.5)
                .fill(.white)
                .opacity(
                    colorScheme == .light ?
                        0.5 : 0.35))
        .shadow(color: shadowColor.opacity(0.2), x: 0, y: 20, blur: 20)
        .padding()
    }
}

struct IconButtons_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradientPreview()
            VStack {
                CircleIconButton(content: {
                    Icon(resize: true, path: "Icons/Frog")
                }, shadowColor: .green)
            }
        }
    }
}
