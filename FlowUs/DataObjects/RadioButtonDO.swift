//
//  RadioButtonDO.swift
//  FlowUs
//
//  Created by Lucas Goldner on 16.04.22.
//

import Foundation
import SwiftUI

struct RadioButtonDO: Identifiable {
    let id: String
    let callback: (String) -> Void
    let selectedID: String
    let color: Color
    let textSize: CGFloat
}
