//
//  VerifyView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 24.04.22.
//

import SwiftUI

struct VerifyView: View {
    var body: some View {
        ZStack {
            CommonBackground()
            DarkBlueBob()
                .padding(.top, -UIScreen.screenWidth + 100)
            VStack {
                BackBar().frame(width: UIScreen.screenWidth)
                Spacer()
            }
        }
    }
}

struct VerifyView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: VerifyView())
    }
}
