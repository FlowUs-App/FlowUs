//
//  IconButtons.swift
//  FlowUs
//
//  Created by Lucas Goldner on 15.04.22.
//

import PolyKit
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
        }.frame(width: 65, height: 65)
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
    }
}

struct HexagonIconButton<Content: View>: View {
    @Environment(\.colorScheme) var colorScheme
    @ViewBuilder var content: Content
    var shadowColor: Color = .black

    var body: some View {
        ZStack {
            VisualEffectBlurView(blurStyle: .systemUltraThinMaterial, vibrancyStyle: .fill, content: {})
            content.frame(width: 50, height: 50)
        }.frame(width: 76, height: 76)
            .background(colorScheme == .light ?
                Color.clear : Color(hex: "212C4F")).opacity(0.8)
            .mask(
                Poly(count: 6, cornerRadius: 15).frame(width: 76, height: 76))
            .overlay(
                Poly(count: 6, cornerRadius: 15)
                    .stroke(lineWidth: 0.5)
                    .foregroundColor(.white)
                    .opacity(
                        colorScheme == .light ?
                            0.5 : 0.35)
                    .frame(width: 76, height: 76)
            )
            .shadow(color: shadowColor.opacity(0.2), x: 0, y: 20, blur: 20)
    }
}

struct IconButtons_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                LinearGradientPreview()
                HStack {
                    CircleIconButton(content: {
                        Icon(resize: true, path: "Icons/Frog")
                    }, shadowColor: .green)
                    HexagonIconButton(content: {
                        Icon(resize: true, path: "Icons/Frog")
                    }, shadowColor: .green)
                }
            }
            ZStack {
                LinearGradientPreview()
                HStack {
                    CircleIconButton(content: {
                        Icon(resize: true, path: "Icons/Frog")
                    }, shadowColor: .green)
                    HexagonIconButton(content: {
                        Icon(resize: true, path: "Icons/Frog")
                    }, shadowColor: .green)
                }.preferredColorScheme(.dark)
            }
        }
    }
}
