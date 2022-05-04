//
//  MagicNumbersInput.swift
//  FlowUs
//
//  Created by Lucas Goldner on 26.04.22.
//

import SwiftUI


struct MagicNumersInput: View {
    @FocusState var activeField: MagicNumberField?
    @Binding var magicNumbers: String
    @Binding var magicNumberFields: [String]
    
    func activeState(index: Int) -> MagicNumberField {
        switch index {
        case 0: return .field1
        case 1: return .field2
        case 2: return .field3
        case 3: return .field4
        case 4: return .field5
        default: return .field6
        }
    }

    func magicNumberCondition(values: [String]) {
        for index in 0 ..< 6 {
            if values[index].count > 1 {
                magicNumberFields[index] = String(values[index].last!)
            }
        }

        //  Handles backward/forward movement of fields
        //  when user inputs or deletes a number

        for index in 0 ... 5 {
            if index > 0 {
                //  Go one field back
                if values[index].isEmpty, !values[index - 1].isEmpty {
                    activeField = activeState(index: index - 1)
                }
                //  Move one field forward
                if values[index].count == 1,
                   activeState(index: index) == activeField,
                   index != 5
                {
                    activeField =
                        activeState(index: index + 1)
                }
            } else {
                //  Move one field forward
                if values[index].count == 1,
                   activeState(index: index) == activeField,
                   index != 5
                {
                    activeField =
                        activeState(index: index + 1)
                }
            }
        }
    }

    var body: some View {
        GlasmorphicCard {
            HStack(spacing: 12) {
                ForEach(0 ..< 6, id: \.self) { index in
                    GlasmorphicCard(content: {
                        TextField("", text: $magicNumberFields[index])
                            .keyboardType(.numberPad)
                            .textContentType(.oneTimeCode)
                            .multilineTextAlignment(.center)
                            .focused($activeField, equals: activeState(index: index))
                            .font(Font.body.weight(.semibold))
                            .frame(width: 40, height: 56)
                    }, addPadding: false, strokeColor: activeField == activeState(index: index)
                        ? .blue : .white)
                }
            }.onChange(of: magicNumberFields) { newValue in
                magicNumberCondition(values: newValue)
            }
        }
    }
}

//struct MagicNumersInput_Previews: PreviewProvider {
//    static var previews: some View {
//        DefaultPreview(content: MagicNumersInput(), gradient: true)
//    }
//}
