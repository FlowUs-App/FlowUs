//
//  RegisterDO.swift
//  FlowUs
//
//  Created by Lucas Goldner on 02.05.22.
//

import Foundation
import CountryPicker

struct RegisterDO: Identifiable {
    let id: String
    var name: String
    var username: String
    var email: String
    var country: Country?
    var birthday: Date
    var sex: String
    var password: String
    var confirmPassword: String
    var showPassword: Bool
}
