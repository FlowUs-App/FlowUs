//
//  CountryInput.swift
//  FlowUs
//
//  Created by Lucas Goldner on 15.04.22.
//

import CountryPicker
import SwiftUI

struct CountryInput: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var input: String = ""
    @State private var country: Country?
    @State private var showCountryPicker = false
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"
    let configMaker = Config(
        countryNameTextFont: UIFont.systemFont(ofSize: 16),
        selectedCountryCodeBackgroundColor: UIColor(red: 0.27, green: 0.14, blue: 0.76, alpha: 1.00),
        selectedCountryCodeCornerRadius: CGFloat(15),
        closeButtonTextColor: UIColor.red,
        closeButtonFont: UIFont.systemFont(ofSize: 16),
        closeButtonText: "Close",
        titleText: "Select Country",
        searchBarPlaceholder: "Search",
        searchBarFont: UIFont.systemFont(ofSize: 16),
        searchBarCornerRadius: CGFloat(15))

    var body: some View {
        VStack {
            GlasmorphicCard {
                Button {
                    showCountryPicker = true
                } label: {
                    Text(country?.isoCode.getFlag() ?? "-")
                        .foregroundColor(.white)
                        .font(.system(size: 48))
                }.frame(width: UIScreen.screenWidth / 5)
            }.sheet(isPresented: $showCountryPicker) {
                CountryPicker(country: $country)
            }
        }.onAppear {
            CountryManager.shared.config = configMaker
        }
    }
}

struct SelectInputs_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: CountryInput(), gradient: true)
    }
}
