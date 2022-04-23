//
//  RadioButtonGroup.swift
//  FlowUs
//
//  Created by Lucas Goldner on 16.04.22.
//

import SwiftUI

struct RadioButton: View {
    @Environment(\.colorScheme) var colorScheme
    var radioButton: RadioButtonDO
    init(_ id: String,
         callback: @escaping (String) -> Void,
         selectedID: String,
         size: CGFloat = 20,
         color: Color = Color.black,
         textSize: CGFloat = 14)
    {
        self.radioButton = .init(id: id, callback: callback, selectedID: selectedID, color: color, textSize: textSize)
    }

    var body: some View {
        Button(action: {
            self.radioButton.callback(self.radioButton.id)
        }) {
            HStack(alignment: .center, spacing: 12) {
                ZStack {
                    Circle().opacity(0).frame(width: 16, height: 16)
                        .padding(.all, 4)
                        .background(.ultraThinMaterial, in: Circle())
                        .opacity(0.8)
                        .mask(
                            Circle())
                        .overlay(
                            Circle()
                                .stroke(lineWidth: 0.5)
                                .fill(.white)
                                .opacity(
                                    colorScheme == .light ?
                                        0.5 : 0.35))
                        .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
                    if self.radioButton.selectedID == self.radioButton.id {
                        Circle()
                            .fill(colorScheme == .light ? self.radioButton.color : .white)
                            .frame(width: 12, height: 12)
                            .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
                    }
                }
                CommonText(text: self.radioButton.id,
                           semibold: self.radioButton.selectedID == self.radioButton.id)
                    .font(.system(size: self.radioButton.textSize)).fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.leading)
                Spacer()
            }.foregroundColor(colorScheme == .light ? self.radioButton.color : .white)
        }
        .foregroundColor(self.radioButton.color).buttonStyle(ScaleButtonStyle())
    }
}

struct RadioButtonGroup: View {
    let items: [String]
    @State var selectedId: String = ""
    let callback: (String) -> Void
    var dividersOn: Bool = false
    var color: Color = .black

    var body: some View {
        VStack {
            ForEach(0 ..< items.count, id: \.self) { index in
                RadioButton(self.items[index],
                            callback: self.radioGroupCallback,
                            selectedID: self.selectedId,
                            color: color)
                    .padding(.leading, 12)
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
        DefaultPreview(content: VStack {
            RadioButtonGroup(items: ["Rome", "London", "Paris", "Berlin", "New York"], selectedId: "London", callback: { selected in
                print("Selected is: \(selected)")
            }, color: .white)
            Divider()
            RadioButtonGroup(items: ["Rome", "London", "Paris", "Berlin", "New York"], selectedId: "London") { selected in
                print("Selected is: \(selected)")
            }
        }, gradient: true)
    }
}
