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
            Gradient(
                colors: [.init(hexadecimal: "4624C2"), .init(hexadecimal: "7F5BFF")]),
            startPoint: .bottomTrailing,
            endPoint: .topLeading)
            .ignoresSafeArea(.all)
    }
}

struct ImageSamplePreview: View {
    var body: some View {
        Image("SampleBG").scaleEffect(5)
    }
}

struct DefaultPreview<Content: View>: View {
    let content: Content
    var gradient: Bool = false
    var body: some View {
        Group {
            ZStack {
                if gradient {
                    LinearGradientPreview()
                } else {
                    Color.white
                }
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_13.rawValue))
                .previewDisplayName(DeviceNames.iPhone_13.rawValue)
            ZStack {
                Color.black
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_13.rawValue))
                .previewDisplayName(DeviceNames.iPhone_13.rawValue + " (Dark)")
                .preferredColorScheme(.dark)
            ZStack {
                if gradient {
                    LinearGradientPreview()
                } else {
                    Color.white
                }
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_SE_3rd_generation.rawValue))
                .previewDisplayName(DeviceNames.iPhone_SE_3rd_generation.rawValue)
            ZStack {
                Color.black
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_SE_3rd_generation.rawValue))
                .previewDisplayName(DeviceNames.iPhone_SE_3rd_generation.rawValue + " (Dark)")
                .preferredColorScheme(.dark)
            ZStack {
                if gradient {
                    LinearGradientPreview()
                } else {
                    Color.white
                }
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_13_Pro_Max.rawValue))
                .previewDisplayName(DeviceNames.iPhone_13_Pro_Max.rawValue)
            ZStack {
                Color.black
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_13_Pro_Max.rawValue))
                .previewDisplayName(DeviceNames.iPhone_13_Pro_Max.rawValue + " (Dark)")
                .preferredColorScheme(.dark)
        }
    }
}

struct ImagePreview<Content: View>: View {
    let content: Content
    var gradient: Bool = false
    var body: some View {
        Group {
            ZStack {
                ImageSamplePreview()
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_13.rawValue))
                .previewDisplayName(DeviceNames.iPhone_13.rawValue)
            ZStack {
                Color.black
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_13.rawValue))
                .previewDisplayName(DeviceNames.iPhone_13.rawValue + " (Dark)")
                .preferredColorScheme(.dark)
            ZStack {
                ImageSamplePreview()
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_SE_3rd_generation.rawValue))
                .previewDisplayName(DeviceNames.iPhone_SE_3rd_generation.rawValue)
            ZStack {
                Color.black
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_SE_3rd_generation.rawValue))
                .previewDisplayName(DeviceNames.iPhone_SE_3rd_generation.rawValue + " (Dark)")
                .preferredColorScheme(.dark)
            ZStack {
                ImageSamplePreview()
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_13_Pro_Max.rawValue))
                .previewDisplayName(DeviceNames.iPhone_13_Pro_Max.rawValue)
            ZStack {
                Color.black
                VStack {
                    content
                }
            }.previewDevice(PreviewDevice(rawValue: DeviceNames.iPhone_13_Pro_Max.rawValue))
                .previewDisplayName(DeviceNames.iPhone_13_Pro_Max.rawValue + " (Dark)")
                .preferredColorScheme(.dark)
        }
    }
}
