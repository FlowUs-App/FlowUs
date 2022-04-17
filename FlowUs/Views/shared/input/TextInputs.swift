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
    @State var input: String = ""
    @State var invalid: Bool = false
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"

    var body: some View {
        GlasmorphicCard(content: {
            TextField(placeholderText, text: $input)
                .foregroundColor(colorScheme == .light
                    ? invalid ? .red
                    : color : invalid ? .red : .white)
                .padding().placeholder(when: input.isEmpty) {
                    Text(placeholderText)
                        .foregroundColor(colorScheme == .light ? placeholderColor : placeholderColor.opacity(0.5)).padding()
                }
        }, addPadding: false, strokeColor: invalid ? .red : .white)
            .frame(width: UIScreen.screenWidth - 15)
    }
}

struct TextInputDouble: View {
    @Environment(\.colorScheme) var colorScheme
    @State var inputFirst: String = ""
    @State var inputSecond: String = ""
    @State var invalidFirst: Bool = false
    @State var invalidSecond: Bool = false
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"

    var body: some View {
        GlasmorphicCard(content: {
            VStack(spacing: 0) {
                TextField(placeholderText, text: $inputFirst)
                    .foregroundColor(colorScheme == .light
                        ? invalidFirst ? .red
                        : color : invalidFirst ? .red : .white)
                    .padding()
                    .placeholder(when: inputFirst.isEmpty) {
                        Text(placeholderText).foregroundColor(colorScheme == .light ? placeholderColor : placeholderColor.opacity(0.5))
                            .padding()
                    }
                Divider().background(invalidFirst || invalidSecond ? .red : .white)
                TextField(placeholderText, text: $inputSecond)
                    .foregroundColor(colorScheme == .light
                        ? invalidSecond ? .red
                        : color : invalidSecond ? .red : .white)
                    .padding().ignoresSafeArea(.keyboard, edges: .bottom)
                    .placeholder(when: inputSecond.isEmpty) {
                        Text(placeholderText).foregroundColor(colorScheme == .light ? placeholderColor : placeholderColor.opacity(0.5))
                            .padding()
                    }
            }
        }, addPadding: false, strokeColor: invalidFirst || invalidSecond ? .red : .white)
            .frame(width: UIScreen.screenWidth - 15)
    }
}

struct TextInputS: View {
    @Environment(\.colorScheme) var colorScheme
    @State var input: String = ""
    @State var invalid: Bool = false
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"

    var body: some View {
        GlasmorphicCard(content: {
            TextField(placeholderText, text: $input)
                .foregroundColor(colorScheme == .light
                    ? invalid ? .red
                    : color : invalid ? .red : .white)
                .padding().placeholder(when: input.isEmpty) {
                    Text(placeholderText)
                        .foregroundColor(colorScheme == .light ? placeholderColor : placeholderColor.opacity(0.5)).padding()
                }
        }, addPadding: false, strokeColor: invalid ? .red : .white)
            .frame(width: UIScreen.screenWidth / 2.5)
    }
}

struct TextInputs_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: VStack {
            TextInput()
            TextInput(input: "Example")
            TextInput(input: "Example", invalid: true)
            HStack {
                TextInputS()
                TextInputS(input: "Example", invalid: true)
            }
            TextInputDouble(inputFirst: "Example", invalidFirst: true)
            TextInputDouble(inputFirst: "Example", inputSecond: "Example", invalidSecond: true)
            TextInputDouble()
            Spacer()
        }, gradient: true)
    }
}
