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
    var shadowColor: Color = .black
    var width: Double = 64
    var height: Double = 64
    var iconWidth: Double = 48
    var iconHeight: Double = 48

    var body: some View {
        ZStack {
            Circle().background(.ultraThinMaterial).opacity(0.8).frame(width: width, height: height)
            content.frame(width: iconWidth, height: iconHeight)
        }.mask(
            Circle().frame(width: width, height: height))
            .overlay(
                Circle()
                    .stroke(lineWidth: 0.5)
                    .fill(.white)
                    .opacity(
                        colorScheme == .light ?
                            0.5 : 0.35)
                    .frame(width: width, height: height))
            .shadow(color:
                shadowColor.opacity(0.2), x: 0, y: 20, blur: 20)
    }
}

struct HexagonIconButton<Content: View>: View {
    @Environment(\.colorScheme) var colorScheme
    @ViewBuilder var content: Content
    var shadowColor: Color = .black
    var width: Double = 76
    var height: Double = 76
    var iconWidth: Double = 48
    var iconHeight: Double = 48

    var body: some View {
        ZStack {
            Poly(count: 6, cornerRadius: 15).background(.ultraThinMaterial).opacity(0.8).frame(width: width, height: height)
            content.frame(width: iconWidth, height: iconHeight)
        }.mask(
            Poly(count: 6, cornerRadius: 15).frame(width: width, height: height))
            .overlay(
                Poly(count: 6, cornerRadius: 15)
                    .stroke(lineWidth: 0.5)
                    .foregroundColor(.white)
                    .opacity(
                        colorScheme == .light ?
                            0.5 : 0.35)
                    .frame(width: width, height: height))
            .shadow(color:
                shadowColor.opacity(0.2), x: 0, y: 20, blur: 20)
    }
}

struct IconButtons_Previews: PreviewProvider {
    static var previews: some View {
        ImagePreview(content: HStack {
            CircleIconButton(content: {
                Icon(path: "Icons/Frog")
            }, shadowColor: .green)
            HexagonIconButton(content: {
                Icon(path: "Icons/Frog")
            }, shadowColor: .green)
        })
    }
}
