//
//  VerifyOO.swift
//  FlowUs
//
//  Created by Lucas Goldner on 04.05.22.
//

import Foundation

import SwiftUI

class VerifyOO: ObservableObject {
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

    func getCurrentNumbers() -> Int {
        return Int(magicNumberFields.joined()) ?? 0
    }
}
