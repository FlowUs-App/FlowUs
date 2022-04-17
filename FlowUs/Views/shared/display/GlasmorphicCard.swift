//
//  GlasmorphicVideo.swift
//  FlowUs
//
//  Created by Lucas Goldner on 10.04.22.
//

import Colorful
import SwiftUI

struct GlasmorphicCard<Content: View>: View {
    @Environment(\.colorScheme) var colorScheme
    @ViewBuilder var content: Content
    var alignment: HorizontalAlignment = .center

    var body: some View {
        VStack(alignment: alignment) {
            content
        }.padding()
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15, style: .continuous))
            .opacity(0.8)
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
    }
}

struct GlasmorphicVideo_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: GlasmorphicCard { Text("Glas") }, gradient: true)
    }
}
