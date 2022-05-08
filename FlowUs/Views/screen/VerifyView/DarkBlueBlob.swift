//
//  DarkBlueBlob.swift
//  FlowUs
//
//  Created by Lucas Goldner on 24.04.22.
//

import SwiftUI

struct DarkBlueBobShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 1.21326*width, y: 0.50822*height))
        path.addCurve(to:
            CGPoint(x: 1.18225*width, y: 0.9066*height), control1:
            CGPoint(x: 1.21047*width, y: 0.64649*height), control2:
            CGPoint(x: 1.31031*width, y: 0.80857*height))
        path.addCurve(to:
            CGPoint(x: 0.65925*width, y: 0.93233*height), control1:
            CGPoint(x: 1.05416*width, y: 1.00466*height), control2:
            CGPoint(x: 0.84044*width, y: 0.92287*height))
        path.addCurve(to:
            CGPoint(x: 0.05919*width, y: 0.9653*height), control1:
            CGPoint(x: 0.45127*width, y: 0.94321*height), control2:
            CGPoint(x: 0.23474*width, y: 1.05095*height))
        path.addCurve(to:
            CGPoint(x: -0.21*width, y: 0.50822*height), control1:
            CGPoint(x: -0.13271*width, y: 0.87167*height), control2:
            CGPoint(x: -0.20553*width, y: 0.68178*height))
        path.addCurve(to:
            CGPoint(x: 0.0352*width, y: 0.03287*height), control1:
            CGPoint(x: -0.21455*width, y: 0.33128*height), control2:
            CGPoint(x: -0.15962*width, y: 0.1293*height))
        path.addCurve(to:
            CGPoint(x: 0.65925*width, y: 0.07798*height), control1:
            CGPoint(x: 0.21735*width, y: -0.05728*height), control2:
            CGPoint(x: 0.44261*width, y: 0.06597*height))
        path.addCurve(to:
            CGPoint(x: 1.19859*width, y: 0.0974*height), control1:
            CGPoint(x: 0.84586*width, y: 0.08833*height), control2:
            CGPoint(x: 1.06758*width, y: -0.00435*height))
        path.addCurve(to:
            CGPoint(x: 1.21326*width, y: 0.50822*height), control1:
            CGPoint(x: 1.32951*width, y: 0.19907*height), control2:
            CGPoint(x: 1.21614*width, y: 0.36583*height))
        path.closeSubpath()
        return path
    }
}

struct DarkBlueBob: View {
    var body: some View {
        DarkBlueBobShape()
            .padding(.leading, 52)
            .frame(width: 500, height: 492)
            .foregroundColor(.init(hex: "#0A306A"))
    }
}

struct DarkBlueBlob_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: DarkBlueBob())
    }
}
