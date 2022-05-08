//
//  LoginDO.swift
//  FlowUs
//
//  Created by Lucas Goldner on 02.05.22.
//

import Foundation

struct LoginDO: Identifiable {
    let id: String
    var email: String
    var password: String
    var showPassword: Bool
}
