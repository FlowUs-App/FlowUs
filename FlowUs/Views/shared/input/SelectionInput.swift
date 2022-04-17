//
//  SelectionInput.swift
//  FlowUs
//
//  Created by Lucas Goldner on 16.04.22.
//

import SwiftUI

struct SelectionInput: View {
    @Environment(\.colorScheme) var colorScheme
    let items: [String]
    let text: String

    var body: some View {
        ZStack {
            GlasmorphicCard(content: {
                VStack(alignment: .leading) {
                    CommonText(text: text, semibold: true)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.top, 12)
                        .padding(.leading, 12)
                        .padding(.trailing, 4)
                    Divider().background(.white)
                    RadioButtonGroup(items: items,
                                     selectedId: "1. Option",
                                     callback: { selected in
                                         print("Selected is: \(selected)")
                                     },
                                     dividersOn: true)

                }.padding(.bottom, 12)
            }, addPadding: false)
        }
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
        .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
        .padding()
    }
}

struct SelectionInput_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: VStack { HStack {
            SelectionInput(items: ["1. Option", "2. Option", "3. Option Long"], text: "Choose 1, 2 or 3")
            SelectionInput(items: ["1. Option", "2. Option", "3. Option", "4. Option"], text: "Choose 1, 2, 3 or 4")
        }
        SelectionInput(items: ["1. Option", "2. Option", "3. Option", "4. Option", "5. Option"], text: "Choose 1, 2, 3, 4 or 5")
        }, gradient: true)
    }
}
