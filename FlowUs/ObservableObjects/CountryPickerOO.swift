//
//  CountryPickerOO.swift
//  FlowUs
//
//  Created by Lucas Goldner on 15.04.22.
//

import CountryPicker
import SwiftUI

struct CountryPicker: UIViewControllerRepresentable {
    @Environment(\.colorScheme) var colorScheme
    typealias UIViewControllerType = CountryPickerViewController
    let countryPicker = CountryPickerViewController()
    @Binding var country: Country?

    func makeUIViewController(context: Context) -> CountryPickerViewController {
        countryPicker.delegate = context.coordinator
        return countryPicker
    }

    func updateUIViewController(_ uiViewController: CountryPickerViewController, context: Context) {
        //
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }

    class Coordinator: NSObject, CountryPickerDelegate {
        var parent: CountryPicker

        init(_ parent: CountryPicker) {
            self.parent = parent
        }

        func countryPicker(didSelect country: Country) {
            parent.country = country
        }
    }
}
