//
//  PurpleBlob.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import SwiftUI

struct PurpleBlobShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.49498*width, y: 0.05508*height))
        path.addCurve(to:
            CGPoint(x: 0.87897*width, y: 0.04928*height),
            control1: CGPoint(x: 0.62206*width, y: 0.01127*height),
            control2: CGPoint(x: 0.7732*width, y: -0.04031*height))
        path.addCurve(to:
            CGPoint(x: 0.9911*width, y: 0.47532*height), control1:
            CGPoint(x: 0.98915*width, y: 0.14261*height), control2:
            CGPoint(x: 1.01677*width, y: 0.32418*height))
        path.addCurve(to:
            CGPoint(x: 0.75718*width, y: 0.76623*height), control1:
            CGPoint(x: 0.96855*width, y: 0.60808*height), control2:
            CGPoint(x: 0.84546*width, y: 0.67319*height))
        path.addCurve(to:
            CGPoint(x: 0.49498*width, y: 0.99826*height), control1:
            CGPoint(x: 0.67292*width, y: 0.85505*height), control2:
            CGPoint(x: 0.61052*width, y: 0.98441*height))
        path.addCurve(to:
            CGPoint(x: 0.16922*width, y: 0.83674*height), control1:
            CGPoint(x: 0.37205*width, y: 1.013*height), control2:
            CGPoint(x: 0.25833*width, y: 0.93184*height))
        path.addCurve(to:
            CGPoint(x: 0.00499*width, y: 0.47532*height), control1:
            CGPoint(x: 0.07812*width, y: 0.73951*height), control2:
            CGPoint(x: -0.02389*width, y: 0.61187*height))
        path.addCurve(to:
            CGPoint(x: 0.29302*width, y: 0.25125*height), control1:
            CGPoint(x: 0.03283*width, y: 0.34365*height), control2:
            CGPoint(x: 0.19658*width, y: 0.33397*height))
        path.addCurve(to:
            CGPoint(x: 0.49498*width, y: 0.05508*height), control1:
            CGPoint(x: 0.36661*width, y: 0.18814*height), control2:
            CGPoint(x: 0.40615*width, y: 0.0857*height))
        path.closeSubpath()
        return path
    }
}

struct PurpleBlob: View {
    var body: some View {
        PurpleBlobShape().frame(width: 320, height: 292).foregroundColor(.init(hex: "5F3DDD"))
    }
}

struct PurpleBlob_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: PurpleBlob())
    }
}
