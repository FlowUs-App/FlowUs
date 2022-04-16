//
//  RadioButtonGroup.swift
//  FlowUs
//
//  Created by Lucas Goldner on 16.04.22.
//

import SwiftUI
import SwiftUIX

struct ColorInvert: ViewModifier {
    @Environment(\.colorScheme) var colorScheme

    func body(content: Content) -> some View {
        Group {
            if colorScheme == .dark {
                content.colorInvert()
            } else {
                content
            }
        }
    }
}

struct RadioButton: View {
    @Environment(\.colorScheme) var colorScheme
    var radioButton: RadioButtonDO
    init(_ id: String,
         callback: @escaping (String) -> Void,
         selectedID: String,
         size: CGFloat = 20,
         color: Color = Color.primary,
         textSize: CGFloat = 14)
    {
        self.radioButton = .init(id: id, callback: callback, selectedID: selectedID, color: color, textSize: textSize)
    }

    var body: some View {
        Button(action: {
            self.radioButton.callback(self.radioButton.id)
        }) {
            HStack(alignment: .center, spacing: 10) {
                ZStack {
                    VisualEffectBlurView(blurStyle: .systemUltraThinMaterial, vibrancyStyle: .fill, content: {})
                    if self.radioButton.selectedID == self.radioButton.id {
                        Circle().fill(self.radioButton.color).frame(width: 12, height: 12)
                    }
                }.frame(width: 24, height: 24)
                    .frame(width: 24, height: 24)
                    .background(colorScheme == .light ?
                        Color.clear : Color(hex: "212C4F")).opacity(0.8)
                    .mask(
                        Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 0.5)
                            .fill(.white)
                            .opacity(
                                colorScheme == .light ?
                                    0.5 : 0.35))
                    .shadow(color: .black.opacity(0.2), x: 0, y: 20, blur: 20)
                CommonText(text: self.radioButton.id,
                           semibold: self.radioButton.selectedID == self.radioButton.id)
                    .font(.system(size: self.radioButton.textSize))
                Spacer()
            }.foregroundColor(self.radioButton.color)
        }
        .foregroundColor(self.radioButton.color)
    }
}

struct RadioButtonGroup: View {
    let items: [String]
    @State var selectedId: String = ""
    let callback: (String) -> Void
    var dividersOn: Bool = false

    var body: some View {
        VStack {
            ForEach(0 ..< items.count, id: \.self) { index in
                RadioButton(self.items[index], callback: self.radioGroupCallback, selectedID: self.selectedId).padding(.leading, 10)
                if dividersOn && (items.count - 1 != index) {
                    Divider().background(.white)
                }
            }
        }
    }

    func radioGroupCallback(id: String) {
        selectedId = id
        callback(id)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: RadioButtonGroup(items: ["Rome", "London", "Paris", "Berlin", "New York"], selectedId: "London") { selected in
            print("Selected is: \(selected)")
        }, gradient: true)
    }
}
