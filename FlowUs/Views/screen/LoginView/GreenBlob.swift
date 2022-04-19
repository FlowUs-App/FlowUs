//
//  GreenBlob.swift
//  FlowUs
//
//  Created by Lucas Goldner on 19.04.22.
//

import SwiftUI

struct GreenBlobShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to:
            CGPoint(x: 0.58268*width, y: 0.00005*height))
        path.addCurve(to:
            CGPoint(x: 0.8956*width, y: 0.16588*height), control1:
            CGPoint(x: 0.70507*width, y: 0.00229*height), control2:
            CGPoint(x: 0.81698*width, y: 0.07095*height))
        path.addCurve(to:
            CGPoint(x: 0.98226*width, y: 0.48247*height), control1:
            CGPoint(x: 0.96787*width, y: 0.25313*height), control2:
            CGPoint(x: 0.97324*width, y: 0.369*height))
        path.addCurve(to:
            CGPoint(x: 0.95036*width, y: 0.85446*height), control1:
            CGPoint(x: 0.99251*width, y: 0.61144*height), control2:
            CGPoint(x: 1.02986*width, y: 0.75311*height))
        path.addCurve(to:
            CGPoint(x: 0.58268*width, y: 0.9918*height), control1:
            CGPoint(x: 0.86592*width, y: 0.96208*height), control2:
            CGPoint(x: 0.71492*width, y: 1.02311*height))
        path.addCurve(to:
            CGPoint(x: 0.35443*width, y: 0.71339*height), control1:
            CGPoint(x: 0.46204*width, y: 0.96324*height), control2:
            CGPoint(x: 0.44801*width, y: 0.79553*height))
        path.addCurve(to:
            CGPoint(x: 0.00239*width, y: 0.48247*height), control1:
            CGPoint(x: 0.24461*width, y: 0.617*height), control2:
            CGPoint(x: 0.02732*width, y: 0.62738*height))
        path.addCurve(to:
            CGPoint(x: 0.25823*width, y: 0.15423*height), control1:
            CGPoint(x: -0.02216*width, y: 0.33976*height), control2:
            CGPoint(x: 0.14761*width, y: 0.24619*height))
        path.addCurve(to:
            CGPoint(x: 0.58268*width, y: 0.00005*height), control1:
            CGPoint(x: 0.3542*width, y: 0.07444*height), control2:
            CGPoint(x: 0.45848*width, y: -0.00222*height))
        path.closeSubpath()
        return path
    }
}

struct GreenBlob: View {
    var body: some View {
        GreenBlobShape()
            .padding(.leading, 52)
            .frame(width: 500, height: 492)
            .foregroundColor(.init(hex: "#007B33"))
    }
}

struct GreenBlob_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: GreenBlob())
    }
}
