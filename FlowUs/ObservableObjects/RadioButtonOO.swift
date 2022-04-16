//
//  RadioButtonOO.swift
//  FlowUs
//
//  Created by Lucas Goldner on 16.04.22.
//

import Foundation
import SwiftUI

class RadioButtonOO: ObservableObject {
    @Published var radiobutton: RadioButtonDO

    init(
        _ id: String,
        callback: @escaping (String) -> Void,
        selectedID: String,
        size: CGFloat,
        color: Color,
        textSize: CGFloat)
    {
        self.radiobutton = RadioButtonDO(id: id, callback: callback, selectedID: selectedID, color: color, textSize: textSize)
    }
}
