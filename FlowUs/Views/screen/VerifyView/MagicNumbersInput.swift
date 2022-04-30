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

    func magicNumberCondition(values: [String]) {
        for index in 0 ..< 6 {
            if values[index].count > 1 {
                magicNumbersOO.magicNumberFields[index] = String(values[index].last!)
            }
        }

        //  Handles backward/forward movement of fields
        //  when user inputs or deletes a number

        for index in 0 ... 5 {
            if index > 0 {
                //  Go one field back
                if values[index].isEmpty, !values[index - 1].isEmpty {
                    activeField = magicNumbersOO.activeState(index: index - 1)
                }
                //  Move one field forward
                if values[index].count == 1,
                   magicNumbersOO.activeState(index: index) == activeField,
                   index != 5
                {
                    activeField =
                        magicNumbersOO.activeState(index: index + 1)
                }
            } else {
                //  Move one field forward
                if values[index].count == 1,
                   magicNumbersOO.activeState(index: index) == activeField,
                   index != 5
                {
                    activeField =
                        magicNumbersOO.activeState(index: index + 1)
                }
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
                            .frame(width: 40, height: 56)
                    }, addPadding: false, strokeColor: activeField == magicNumbersOO.activeState(index: index)
                        ? .blue : .white)
                }
            }.onChange(of: magicNumbersOO.magicNumberFields) { newValue in
                magicNumberCondition(values: newValue)
            }
        }
    }
}

struct MagicNumersInput_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: MagicNumersInput(), gradient: true)
    }
}
