//
//  RegisterOO.swift
//  FlowUs
//
//  Created by Lucas Goldner on 02.05.22.
//

import CountryPicker
import Foundation
import UIPilot

class RegisterOO: ObservableObject {
    @Published var data: RegisterDO

    init() {
        let langStr = Locale.current.regionCode
        data = .init(id: "",
                     name: "",
                     username: "",
                     email: "",
                     country: Country(isoCode: langStr ?? "US"),
                     birthday: Date.now,
                     sex: "",
                     password: "",
                     confirmPassword: "",
                     showPassword: false)
    }

    func verifyFields() {
        print(data.id)
        print(data.name)
        print(data.username)
        print(data.email)
        print(data.country ?? "no country")
        print(data.birthday)
        print(data.sex)
        print(data.password)
        print(data.confirmPassword)
        print(data.showPassword)
    }

    func toogleViewPassword() {
        data.showPassword.toggle()
    }

    func callAccountCreation() {}

    func register() {
        verifyFields()
        callAccountCreation()
    }
}
