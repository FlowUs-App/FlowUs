//
//  Toast.swift
//  FlowUs
//
//  Created by Lucas Goldner on 17.04.22.
//

import SimpleToast
import SwiftUI

enum ToastTypes {
    case error
    case info
    case success
}

struct Toast: View {
    @Environment(\.colorScheme) var colorScheme
    @State var showToast: Bool = false
    let type: ToastTypes

    var body: some View {
        switch type {
        case .error:
            GlasmorphicCard(content: {
                HStack {
                    Icon(resize: true, path: "Icons/Error")
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 12)
                    VStack(alignment: .leading) {
                        CommonText(text: "An error occured", semibold: true)
                        CommonText(text: "Please try it again")
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    Spacer()
                }.frame(width: UIScreen.screenWidth - 64, height: 64)
            }, alignment: .leading)
        case .info:
            GlasmorphicCard(content: {
                HStack {
                    Icon(resize: true, path: "Icons/Info")
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 12)
                    VStack(alignment: .leading) {
                        CommonText(text: "Take this hint", semibold: true)
                        CommonText(text: "You should try to do this by doing something else")
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    Spacer()
                }.frame(width: UIScreen.screenWidth - 64, height: 64)
            }, alignment: .leading)
        case .success:
            GlasmorphicCard {
                HStack {
                    Icon(resize: true, path: "Icons/Success")
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 12)
                    VStack(alignment: .leading) {
                        CommonText(text: "Good job", semibold: true)
                        CommonText(text: "You did an awesome job")
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    Spacer()
                }.frame(width: UIScreen.screenWidth - 64, height: 64)
            }
        }
    }
}

struct ToastPreview: View {
    @State var showToast: Bool = false

    private let toastOptions = SimpleToastOptions(
        hideAfter: 5,
        modifierType: .slide
    )

    var body: some View {
        VStack(spacing: 20) {
            Button("Show toasts") {
                withAnimation {
                    showToast.toggle()
                }
            }.foregroundColor(.white)
        }
        .simpleToast(isPresented: $showToast, options: toastOptions) {
            Toast(type: .error)
            Toast(type: .info)
            Toast(type: .success)
        }
    }
}

struct Toast_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: ToastPreview(), gradient: true)
    }
}
