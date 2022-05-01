//
//  TextInputs.swift
//  FlowUs
//
//  Created by Lucas Goldner on 13.04.22.
//

import SwiftUI

struct TextInput: View {
    @Environment(\.colorScheme) var colorScheme
    @State var input: String = ""
    @State var invalid: Bool = false
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"
    var small: Bool = false

    var body: some View {
        GlasmorphicCard(content: {
            TextField(placeholderText, text: $input)
                .foregroundColor(colorScheme == .light
                    ? invalid ? .red
                    : color : invalid ? .red : .white)
                .padding().placeholder(when: input.isEmpty) {
                    Text(placeholderText)
                        .foregroundColor(placeholderColor).padding()
                }
        }, addPadding: false, strokeColor: invalid ? .red : .white)
            .frame(width:
                small ? UIScreen.screenWidth / 2.5 : UIScreen.screenWidth - 15)
    }
}

struct TextInputDouble: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var inputFirst: String
    @Binding var inputSecond: String
    @State var invalidFirst: Bool = false
    @State var invalidSecond: Bool = false
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderTextFirst: String = "Placeholder"
    var placeholderTextSecond: String = "Placeholder"

    var body: some View {
        GlasmorphicCard(content: {
            VStack(spacing: 0) {
                TextField(placeholderTextFirst, text: $inputFirst)
                    .foregroundColor(colorScheme == .light
                        ? invalidFirst ? .red
                        : color : invalidFirst ? .red : .white)
                    .padding()
                    .placeholder(when: inputFirst.isEmpty) {
                        Text(placeholderTextFirst)
                            .foregroundColor(placeholderColor)
                            .padding()
                    }
                Divider().background(invalidFirst || invalidSecond ? .red : .white)
                TextField(placeholderTextSecond, text: $inputSecond)
                    .foregroundColor(colorScheme == .light
                        ? invalidSecond ? .red
                        : color : invalidSecond ? .red : .white)
                    .padding().ignoresSafeArea(.keyboard, edges: .bottom)
                    .placeholder(when: inputSecond.isEmpty) {
                        Text(placeholderTextSecond) .foregroundColor(placeholderColor)
                            .padding()
                    }
            }
        }, addPadding: false, strokeColor: invalidFirst || invalidSecond ? .red : .white)
            .frame(width: UIScreen.screenWidth - 15)
    }
}

struct TextInputTriple: View {
    @Environment(\.colorScheme) var colorScheme
    @State var inputFirst: String = ""
    @State var inputSecond: String = ""
    @State var inputThird: String = ""
    @State var invalidFirst: Bool = false
    @State var invalidSecond: Bool = false
    @State var invalidThird: Bool = false
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderTextFirst: String = "Placeholder"
    var placeholderTextSecond: String = "Placeholder"
    var placeholderTextThird: String = "Placeholder"

    var body: some View {
        GlasmorphicCard(content: {
            VStack(spacing: 0) {
                TextField(placeholderTextFirst, text: $inputFirst)
                    .foregroundColor(colorScheme == .light
                        ? invalidFirst ? .red
                        : color : invalidFirst ? .red : .white)
                    .padding()
                    .placeholder(when: inputFirst.isEmpty) {
                        Text(placeholderTextFirst)
                            .foregroundColor(placeholderColor)
                            .padding()
                    }
                Divider().background(invalidFirst || invalidSecond || invalidThird ? .red : .white)
                TextField(placeholderTextSecond, text: $inputSecond)
                    .foregroundColor(colorScheme == .light
                        ? invalidSecond ? .red
                        : color : invalidSecond ? .red : .white)
                    .padding().ignoresSafeArea(.keyboard, edges: .bottom)
                    .placeholder(when: inputSecond.isEmpty) {
                        Text(placeholderTextSecond)
                            .foregroundColor(placeholderColor)
                            .padding()
                    }
                Divider()
                    .background(invalidFirst || invalidSecond || invalidThird ? .red : .white)
                TextField(placeholderTextThird, text: $inputThird)
                    .foregroundColor(colorScheme == .light
                        ? invalidThird ? .red
                        : color : invalidThird ? .red : .white)
                    .padding().ignoresSafeArea(.keyboard, edges: .bottom)
                    .placeholder(when: inputThird.isEmpty) {
                        Text(placeholderTextThird)
                            .foregroundColor(placeholderColor)
                            .padding()
                    }
            }
        }, addPadding: false, strokeColor: invalidFirst || invalidSecond || invalidThird ? .red : .white)
            .frame(width: UIScreen.screenWidth - 15)
    }
}

//struct TextInputs_Previews: PreviewProvider {
//    static var previews: some View {
//        DefaultPreview(content: VStack {
//            TextInput()
//            TextInput(input: "Example")
//            TextInput(input: "Example", invalid: true)
//            HStack {
//                TextInput(small: true)
//                TextInput(input: "Example", invalid: true, small: true)
//            }
//            TextInputDouble()
//            TextInputDouble(inputFirst: "Example", inputSecond: "Example", invalidSecond: true)
//            TextInputTriple(inputFirst: "Example", inputSecond: "Example", invalidSecond: true)
//            Spacer()
//        }, gradient: true)
//    }
//}
