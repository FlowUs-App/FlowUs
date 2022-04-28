//
//  MagicNumbersInput.swift
//  FlowUs
//
//  Created by Lucas Goldner on 26.04.22.
//

import SwiftUI

struct MagicNumersInput: View {
    @StateObject var magicNumbersOO: MagicNumbersInputOO = .init()
    @FocusState var activeField: MagicNumberField?

    func magicNumberCondition(value: [String]) {
        //  Moving forward between numbers
        for index in 0 ..< 5 {
            if value[index].count == 1, magicNumbersOO.activeState(index: index) == activeField {
                activeField =
                    magicNumbersOO.activeState(index: index + 1)
            }
        }

        // Moving back between numbers
        for index in 1 ... 5 {
            print("lol")
            if value[index].isEmpty, !value[index - 1].isEmpty {
                activeField = magicNumbersOO.activeState(index: index - 1)
            }
        }

        for index in 0 ..< 6 {
            if value[index].count > 1 {
                magicNumbersOO.magicNumberFields[index] = String(value[index].last!)
            }
        }
    }

    var body: some View {
        GlasmorphicCard {
            HStack(spacing: 12) {
                ForEach(0 ..< 6, id: \.self) { index in
                    GlasmorphicCard(content: {
                        TextField("", text: $magicNumbersOO.magicNumberFields[index])
                            .keyboardType(.numberPad)
                            .textContentType(.oneTimeCode)
                            .multilineTextAlignment(.center)
                            .focused($activeField, equals: magicNumbersOO.activeState(index: index))
                            .font(Font.body.weight(.semibold))
                            .frame(width: 12, height: 28)
                    }, strokeColor: activeField == magicNumbersOO.activeState(index: index)
                        ? .blue : .white)
                }
            }.onChange(of: magicNumbersOO.magicNumberFields) { newValue in
                magicNumberCondition(value: newValue)
            }
        }
    }
}

struct MagicNumersInput_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: MagicNumersInput(), gradient: true)
    }
}
