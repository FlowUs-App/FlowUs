//
//  Backgrounds.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import SwiftUI

struct CommonBackground: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        colorScheme == .light ?
            Color(hex: "F5F8FF").ignoresSafeArea() : Color.black.ignoresSafeArea()
    }
}

struct Backgrounds_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: CommonBackground())
    }
}
