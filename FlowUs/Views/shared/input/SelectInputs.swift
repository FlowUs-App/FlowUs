//
//  SelectInputs.swift
//  FlowUs
//
//  Created by Lucas Goldner on 15.04.22.
//

import CountryPicker
import SwiftUI
import SwiftUIX

struct CountryInput: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var input: String = ""
    @State private var country: Country?
    @State private var showCountryPicker = false
    var color: Color = .black
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"

    var body: some View {
        VStack {
            ZStack {
                VisualEffectBlurView(blurStyle: .systemUltraThinMaterial, vibrancyStyle: .fill, content: {})
                Button {
                    showCountryPicker = true
                } label: {
                    Text(country?.isoCode.getFlag() ?? "-")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
            }
            .frame(width: UIScreen.screenWidth / 4, height: 60)
            .background(colorScheme == .light ?
                Color.clear : Color(hex: "212C4F")).opacity(0.8)
            .mask(
                RoundedRectangle(cornerRadius: 15, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .stroke(lineWidth: 0.5)
                    .fill(.white)
                    .opacity(
                        colorScheme == .light ?
                            0.5 : 0.35))
            .shadow(color: .black.opacity(0.2), x: 0, y: 20, blur: 20)
            .padding().sheet(isPresented: $showCountryPicker) {
                CountryPicker(country: $country)
            }
        }
    }
}

struct SelectInputs_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradientPreview()
            VStack {
                CountryInput()
            }
        }

        ZStack {
            LinearGradientPreview()
            VStack {
                CountryInput()
            }
        }.preferredColorScheme(.dark)
    }
}
