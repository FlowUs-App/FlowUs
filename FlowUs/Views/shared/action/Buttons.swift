//
//  Buttons.swift
//  FlowUs
//
//  Created by Lucas Goldner on 12.04.22.
//

import SwiftUI

//  S for Small

struct PrimaryButton: View {
    @Environment(\.colorScheme) var colorScheme
    var action: () -> Void
    var text: String = "Button"
    var body: some View {
        Button(action: action) {
            CommonTextC(text: text, semibold: true, color: .white)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 20)
                .padding()
                .background(LinearGradient(
                    colors: [.init(hex: "7F5BFF"), .init(hex: "4624C2")],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
                .cornerRadius(20)
                .shadow(
                    color:
                    colorScheme == .light ? .init(hex: "BDACFB") : .clear,
                    radius: colorScheme == .light ? 20 : 0, x: 0, y: 20
                ).overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black,
                                lineWidth: 2)
                        .shadow(color: .black,
                                radius: 5, x: 5, y: -3)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                        )
                        .shadow(color: .black, radius: 5, x: 5, y: -3)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                        ).opacity(0.37)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white,
                                        lineWidth: 1)
                                .shadow(color: .white,
                                        radius: 5, x: 3, y: 1)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
                                )
                                .shadow(color: .white, radius: 5, x: 2, y: 4)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
                                ).opacity(0.5))
                ).padding(.horizontal)
        }.buttonStyle(ScaleButtonStyle())
    }
}

struct PrimaryButtonS: View {
    @Environment(\.colorScheme) var colorScheme
    var action: () -> Void
    var text: String = "Button"
    var body: some View {
        Button(action: action) {
            CommonTextC(text: text, semibold: true, color: .white)
                .frame(minWidth: 96, minHeight: 20)
                .padding()
                .background(LinearGradient(
                    colors: [.init(hex: "7F5BFF"), .init(hex: "4624C2")],
                    startPoint: .topLeading,
                    endPoint: .bottomLeading
                ))
                .cornerRadius(20)
                .shadow(
                    color:
                    colorScheme == .light ? .init(hex: "BDACFB") : .clear,
                    radius: colorScheme == .light ? 20 : 0, x: 0, y: 20
                ).overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black,
                                lineWidth: 2)
                        .shadow(color: .black,
                                radius: 5, x: 5, y: -3)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                        )
                        .shadow(color: .black, radius: 5, x: 5, y: -3)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                        ).opacity(0.37)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white,
                                        lineWidth: 1)
                                .shadow(color: .white,
                                        radius: 5, x: 3, y: 1)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
                                )
                                .shadow(color: .white, radius: 5, x: 2, y: 4)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
                                ).opacity(0.5))
                )
        }.buttonStyle(ScaleButtonStyle())
    }
}

struct SecondaryButton: View {
    @Environment(\.colorScheme) var colorScheme
    var action: () -> Void
    var text: String = "Button"
    var shadowsEnabled: Bool = true
    var body: some View {
        Button(action: action) {
            CommonTextC(text: text, semibold: true, color: .black)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 20)
                .padding()
                .background(
                    LinearGradient(
                        colors: [.init(hex: "FFFFFF"), .init(hex: "CDDCF6")],
                        startPoint: .topLeading,
                        endPoint: .bottomLeading
                    ))
                .cornerRadius(20)
                .if(shadowsEnabled, transform: { view in
                    view.shadow(
                        color:
                        colorScheme == .light ? .init(hex: "CEDBEF") : .clear,
                        radius: colorScheme == .light ? 20 : 0, x: 0, y: 20
                    )
                })
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black,
                                lineWidth: 1)
                        .shadow(color: .black,
                                radius: 5, x: 5, y: -3)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                        )
                        .shadow(color: .black, radius: 5, x: 5, y: -3)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                        ).opacity(0.37)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white,
                                        lineWidth: 2)
                                .shadow(color: .white,
                                        radius: 5, x: 3, y: 1)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
                                )
                                .shadow(color: .white, radius: 5, x: 2, y: 4)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
                                ).opacity(0.5))
                ).padding(.horizontal)
        }.buttonStyle(ScaleButtonStyle())
    }
}

struct SecondaryButtonS: View {
    @Environment(\.colorScheme) var colorScheme
    var action: () -> Void
    var text: String = "Button"
    var body: some View {
        Button(action: action) {
            CommonTextC(text: text, semibold: true, color: .black)
                .frame(minWidth: 96, minHeight: 20)
                .padding()
                .background(LinearGradient(
                    colors: [.init(hex: "FFFFFF"), .init(hex: "CDDCF6")],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
                .cornerRadius(20).shadow(
                    color:
                    colorScheme == .light ? .init(hex: "CEDBEF") : .clear,
                    radius: colorScheme == .light ? 20 : 0, x: 0, y: 20
                ).overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black,
                                lineWidth: 1)
                        .shadow(color: .black,
                                radius: 5, x: 5, y: -3)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                        )
                        .shadow(color: .black, radius: 5, x: 5, y: -3)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                        ).opacity(0.37)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white,
                                        lineWidth: 2)
                                .shadow(color: .white,
                                        radius: 5, x: 3, y: 1)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
                                )
                                .shadow(color: .white, radius: 5, x: 2, y: 4)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 20)
                                ).opacity(0.5))
                )
        }.buttonStyle(ScaleButtonStyle())
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: VStack {
            Spacer()
            PrimaryButton(action: dummyFunction, text: "Signup")
            Spacer()
            HStack {
                PrimaryButtonS(action: dummyFunction, text: "Signup")
                SecondaryButtonS(action: dummyFunction, text: "Login")
            }
            Spacer()
            SecondaryButton(action: dummyFunction, text: "Login")
            Spacer()
        }, gradient: true)
    }
}
