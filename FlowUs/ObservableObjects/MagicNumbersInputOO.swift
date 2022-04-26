//
//  MagicNumbersInputOO.swift
//  FlowUs
//
//  Created by Lucas Goldner on 26.04.22.
//

import SwiftUI

class MagicNumbersInputOO: ObservableObject {
    @Published var magicNumbers: String = ""
    @Published var magicNumberFields: [String] = Array(repeating: "", count: 6)

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
}

enum MagicNumberField {
    case field1
    case field2
    case field3
    case field4
    case field5
    case field6
}
