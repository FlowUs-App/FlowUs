//
//  SelectionInput.swift
//  FlowUs
//
//  Created by Lucas Goldner on 16.04.22.
//

import SwiftUI
import SwiftUIX

struct SelectionInput: View {
    @Environment(\.colorScheme) var colorScheme
    let items: [String]

    var body: some View {
        ZStack {
            VisualEffectBlurView(blurStyle: .systemUltraThinMaterial, vibrancyStyle: .fill, content: {})
            VStack(alignment: .leading) {
                CommonText(text: "Choose 1, 2 or 3", semibold: true)
                    .padding(.top, 10)
                    .padding(.leading, 10)
                Divider().background(.white)
                RadioButtonGroup(items: items,
                                 selectedId: "1. Option",
                                 callback: { selected in
                                     print("Selected is: \(selected)")
                                 },
                                 dividersOn: true)
            }.frame(height: items.count == 3 ? 180 : items.count == 4 ? 220 : 260, alignment: .top)
        }
        .frame(width: UIScreen.screenWidth / 2.5, height: items.count == 3 ? 180 : items.count == 4 ? 220 : 260)
        .background(colorScheme == .light ?
            Color.clear : Color(hex: "212C4F")).opacity(0.8)
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
        .padding()
    }
}

struct SelectionInput_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: VStack { HStack {
            SelectionInput(items: ["1. Option", "2. Option", "3. Option"])
            SelectionInput(items: ["1. Option", "2. Option", "3. Option", "4. Option"])
        }
        SelectionInput(items: ["1. Option", "2. Option", "3. Option", "4. Option", "5. Option"])
        }, gradient: true)
    }
}