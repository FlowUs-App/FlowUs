//
//  CountryInput.swift
//  FlowUs
//
//  Created by Lucas Goldner on 15.04.22.
//

import CountryPicker
import SwiftUI
import L10n_swift

struct CountryInput: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var country: Country?
    @State private var showCountryPicker = false
    let width: Double
    let height: Double
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"
    let configMaker = Config(
        countryNameTextFont: UIFont.systemFont(ofSize: 16),
        selectedCountryCodeBackgroundColor: UIColor(red: 0.27, green: 0.14, blue: 0.76, alpha: 1.00),
        selectedCountryCodeCornerRadius: CGFloat(15),
        closeButtonTextColor: UIColor.red,
        closeButtonFont: UIFont.systemFont(ofSize: 16),
        closeButtonText: "close".l10n(),
        titleText: "select.country".l10n(),
        searchBarPlaceholder: "search".l10n(),
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
                }.frame(width: width, height: height)
            }.sheet(isPresented: $showCountryPicker) {
                CountryPicker(country: $country)
            }
        }.onAppear {
            CountryManager.shared.config = configMaker
        }
    }
}

//struct SelectInputs_Previews: PreviewProvider {
//    static var previews: some View {
//        DefaultPreview(content:
//            CountryInput(width: UIScreen.screenWidth / 5, height: 100),
//            gradient: true)
//    }
//}
