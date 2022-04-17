//
//  TextInputs.swift
//  FlowUs
//
//  Created by Lucas Goldner on 13.04.22.
//

import SwiftUI

// S for Small
// D for Double

struct TextInput: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var input: String = ""
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"

    var body: some View {
        GlasmorphicCard(content: {
            TextField(placeholderText, text: $input)
                .foregroundColor(colorScheme == .light ? color : .white)
                .padding().placeholder(when: input.isEmpty) {
                    Text(placeholderText).foregroundColor(placeholderColor).padding()
                }
        }, addPadding: false).frame(width: UIScreen.screenWidth - 15)
    }
}

struct TextInputDouble: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var firstInput: String = ""
    @State private var secondInput: String = ""
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"

    var body: some View {
        GlasmorphicCard(content: {
            VStack(spacing: 0) {
                TextField(placeholderText, text: $firstInput)
                    .foregroundColor(colorScheme == .light ? color : .white)
                    .padding()
                    .placeholder(when: firstInput.isEmpty) {
                        Text(placeholderText).foregroundColor(placeholderColor)
                            .padding()
                    }
                Divider().background(.white)
                TextField(placeholderText, text: $secondInput)
                    .foregroundColor(colorScheme == .light ? color : .white)
                    .padding().ignoresSafeArea(.keyboard, edges: .bottom)
                    .placeholder(when: secondInput.isEmpty) {
                        Text(placeholderText).foregroundColor(placeholderColor)
                            .padding()
                    }
            }
        }, addPadding: false).frame(width: UIScreen.screenWidth - 15)
    }
}

struct TextInputS: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var input: String = ""
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"

    var body: some View {
        GlasmorphicCard(content: {
            TextField(placeholderText, text: $input)
                .foregroundColor(colorScheme == .light ? color : .white)
                .padding().placeholder(when: input.isEmpty) {
                    Text(placeholderText).foregroundColor(placeholderColor).padding()
                }
        }, addPadding: false).frame(width: UIScreen.screenWidth / 2.5)
    }
}

struct TextInputs_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: VStack {
            TextInput()
            HStack {
                TextInputS()
                TextInputS()
            }
            TextInputDouble()
        }, gradient: true)
    }
}
