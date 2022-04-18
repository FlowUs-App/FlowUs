//
//  WelcomeView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//

import SwiftUI

struct WelcomeView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            CommonBackground()
            ScrollView {
                ZStack {
                    FirstLayer()
                    FirstLayer().mask(Rectangle()
                        .frame(width: 344, height: 272)
                        .padding(.top, 24)
                    ).blur(radius: 40)
                    SecondLayer()
                    ThirdLayer()
                }
            }.ignoresSafeArea()
        }
    }
}

struct FirstLayer: View {
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                PurpleBlob()
                    .padding(.top, 96)
                    .padding(.trailing, 40)
            }

            HStack {
                YellowRectangle()
                    .padding(.bottom, 140)
                    .padding(.trailing, 280)
                Spacer()
            }
        }.padding(.all, -40)
    }
}

struct SecondLayer: View {
    var body: some View {
        GlasmorphicCard(content: {
            Icon(path: "ScreenAssets/Welcome/ComputerGuy")
                .frame(width: 264, height: 264)
                .padding(.horizontal, 32)
        }).padding(.horizontal, 40)
    }
}

struct ThirdLayer: View {
    var body: some View {
        Icon(path: "ScreenAssets/Welcome/GreenBall")
            .frame(width: 44, height: 44)
            .padding(.trailing, 280)
            .padding(.bottom, 80)
        Icon(path: "ScreenAssets/Welcome/OrangeRing")
            .frame(width: 112, height: 112)
            .padding(.leading, 316)
            .padding(.bottom, 40)
        Icon(path: "ScreenAssets/Welcome/BlueCube")
            .frame(width: 78, height: 78)
            .padding(.top, 296)
            .padding(.trailing, 316)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: WelcomeView())
    }
}
