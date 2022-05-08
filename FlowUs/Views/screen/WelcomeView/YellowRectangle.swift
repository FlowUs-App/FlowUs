//
//  YellowRectangle.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import SwiftUI

struct YellowRectangle: View {
    var body: some View {
        Rectangle().fill(Color(hex: "FFCE70"))
            .frame(width: 320, height: 288).opacity(0.5)
    }
}

struct YellowRectangle_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: YellowRectangle())
    }
}
