//
//  IconButtons.swift
//  FlowUs
//
//  Created by Lucas Goldner on 15.04.22.
//

import PolyKit
import SwiftUI

struct CircleIconButton<Content: View>: View {
    @Environment(\.colorScheme) var colorScheme
    @ViewBuilder var content: Content
    let action: () -> Void
    var shadowColor: Color = .black
    var width: Double = 48
    var height: Double = 48
    var padding: Double = 8

    var body: some View {
        Button(action: action) { content.frame(width: width, height: height)
            .padding(.all, padding)
            .background(.ultraThinMaterial, in: Circle())
            .opacity(0.8)
            .mask(
                Circle())
            .overlay(
                Circle()
                    .stroke(lineWidth: 0.5)
                    .fill(.white)
                    .opacity(
                        colorScheme == .light ?
                            0.5 : 0.35))
            .shadow(color: shadowColor.opacity(0.2), radius: 20, x: 0, y: 20)
        }.buttonStyle(ScaleButtonStyle())
    }
}

struct HexagonIconButton<Content: View>: View {
    @Environment(\.colorScheme) var colorScheme
    @ViewBuilder var content: Content
    let action: () -> Void
    var shadowColor: Color = .black
    var width: Double = 48
    var height: Double = 48
    var padding: Double = 16

    var body: some View {
        Button(action: action) {
            content.frame(width: width, height: height)
                .padding(.all, padding)
                .background(.ultraThinMaterial, in: Circle())
                .opacity(0.8)
                .mask(
                    Poly(count: 6, cornerRadius: 15))
                .overlay(
                    Poly(count: 6, cornerRadius: 15)
                        .stroke(lineWidth: 0.5)
                        .foregroundColor(.white)
                        .opacity(
                            colorScheme == .light ?
                                0.5 : 0.35))
                .shadow(color: shadowColor.opacity(0.2), radius: 20, x: 0, y: 20)
        }.buttonStyle(ScaleButtonStyle())
    }
}

struct IconButtons_Previews: PreviewProvider {
    static var previews: some View {
        ImagePreview(content: HStack {
            CircleIconButton(content: {
                Icon(path: "Icons/Frog")
            }, action: dummyFunction, shadowColor: .green)
            HexagonIconButton(content: {
                Icon(path: "Icons/Frog")
            }, action: dummyFunction, shadowColor: .green)
        })
    }
}
