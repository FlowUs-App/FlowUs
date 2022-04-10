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
        .frame(width: UIScreen.screenWidth - 30, height: 250).mask(RoundedRectangle(cornerRadius: 15))
    }
}

struct GlasmorphicVideo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                Color.purple
                GlasmorphicCard().previewDevice(PreviewDevice(rawValue: DeviceNames.iPhoneSE2.rawValue))
                    .previewDisplayName(DeviceNames.iPhoneSE2.rawValue)
            }
            ZStack {
                Color.purple
                GlasmorphicCard().previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone11.rawValue))
                    .previewDisplayName(DeviceNames.iPhone11.rawValue)
            }
            ZStack {
                Color.purple
                GlasmorphicCard().previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone13ProMax.rawValue))
                    .previewDisplayName(DeviceNames.iPhone13ProMax.rawValue)
            }
        }
    }
}
