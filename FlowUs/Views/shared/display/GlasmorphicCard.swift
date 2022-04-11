//
//  GlasmorphicVideo.swift
//  FlowUs
//
//  Created by Lucas Goldner on 10.04.22.
//

import SwiftUI
import SwiftUIX

struct GlasmorphicCard: View {
    var body: some View {
        ZStack {
            VisualEffectBlurView(blurStyle: .systemUltraThinMaterial, vibrancyStyle: .fill, content: {
                Text("Glas")

            })
        }
        .frame(width: .infinity, height: 250).mask(RoundedRectangle(cornerRadius: 15, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 15, style: .continuous).stroke(lineWidth: 0.5).fill(Color.white).opacity(0.5))
        .shadow(color: Color.black.opacity(0.2), x: 0, y: 20, blur: 20)
        .padding()
    }
}

struct LinearGradientPreview: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.init(hexadecimal: "4624C2"), .init(hexadecimal: "7F5BFF")]), startPoint: .bottomTrailing, endPoint: .topLeading)
    }
}

struct GlasmorphicVideo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                LinearGradientPreview()
                GlasmorphicCard().previewDevice(PreviewDevice(rawValue: DeviceNames.iPhoneSE2.rawValue))
                    .previewDisplayName(DeviceNames.iPhoneSE2.rawValue)
            }
            ZStack {
                LinearGradientPreview()
                GlasmorphicCard().previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone11.rawValue))
                    .previewDisplayName(DeviceNames.iPhone11.rawValue)
            }
            ZStack {
                LinearGradientPreview()
                GlasmorphicCard().previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone13ProMax.rawValue))
                    .previewDisplayName(DeviceNames.iPhone13ProMax.rawValue)
            }
        }
    }
}
