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
    let title: String
    let information: String

    var body: some View {
        GlasmorphicCard {
            HStack {
                switch type {
                case .error:
                    Icon(resize: true, path: "Icons/Error")
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 12)
                case .info:
                    Icon(resize: true, path: "Icons/Info")
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 12)
                case .success:
                    Icon(resize: true, path: "Icons/Success")
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 12)
                }
                VStack(alignment: .leading) {
                    CommonText(text: title, semibold: true)
                    CommonText(text: information)
                        .fixedSize(horizontal: false, vertical: true)
                }
                Spacer()
            }.frame(maxWidth: UIScreen.screenWidth - 64, minHeight: 64)
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
            Toast(type: .error, title: "An error occured", information: "Please fill out all missing fields")
            Toast(type: .info, title: "Take this hint", information: "Try adding a picture to make your post look more interesting. Maybe your text could also be a bit longer")
            Toast(type: .success, title: "Good job!", information: "Your post looks great")
        }
    }
}

struct Toast_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: ToastPreview(), gradient: true)
    }
}
