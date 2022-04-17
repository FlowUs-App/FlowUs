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
                    HStack {
                        YellowRectangle()
                        PurpleBlob()
                    }
                    GlasmorphicCard(content: {
                        Icon(path: "ScreenAssets/Welcome/ComputerGuy")
                            .frame(width: 264, height: 264)
                            .padding(.horizontal, 32)
                    }).padding(.horizontal, 40)
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: WelcomeView())
    }
}
