//
//  Typography.swift
//  FlowUs
//
//  Created by Lucas Goldner on 11.04.22.
//

//  Legend
//  B for Big
//  M for Mid
//  S for Small
//  C for Color

import SwiftUI

struct HeadingBGradient: View {
    var text = ""
    var gradient = LinearGradient(
        colors: [.red, .blue, .green, .yellow],
        startPoint: .leading,
        endPoint: .trailing
    )
    var body: some View {
        Text(text).font(.system(size: 48))
            .fontWeight(.bold)
            .overlay(
                gradient
            )
            .mask(
                Text(text)
                    .font(Font.system(size: 48, weight: .bold))
            )
    }
}

struct HeadingB: View {
    var text = ""
    var body: some View {
        Text(text).font(.system(size: 48)).fontWeight(.bold)
    }
}

struct HeadingM: View {
    var text = ""
    var body: some View {
        Text(text).font(.system(size: 36)).fontWeight(.bold)
    }
}

struct HeadingS: View {
    var text = ""
    var body: some View {
        Text(text).font(.system(size: 24)).fontWeight(.bold)
    }
}

struct Caption: View {
    var text = ""
    var body: some View {
        Text(text).font(Font.system(size: 18)).fontWeight(.semibold).textCase(.uppercase)
    }
}

struct CommonText: View {
    @Environment(\.colorScheme) var colorScheme
    var text = ""
    var semibold = false
    var gutterBottom = false
    var body: some View {
        Text(.init(text))
            .font(Font.system(size: 16))
            .fontWeight(semibold ? .semibold : .regular)
            .padding(.bottom, 4)
    }
}

struct CommonTextC: View {
    @Environment(\.colorScheme) var colorScheme
    var text = ""
    var semibold = false
    var color = Color.black
    var body: some View {
        Text(text)
            .font(Font.system(size: 16))
            .fontWeight(semibold ? .semibold : .regular)
            .foregroundColor(color)
    }
}

struct CommonTextS: View {
    var text = ""
    var semibold = false
    var body: some View {
        Text(text).font(Font.system(size: 14))
            .fontWeight(semibold ? .semibold : .regular)
    }
}

struct Typography_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content: VStack(alignment: .leading) {
            HeadingBGradient(text: "Heading 1 (48)", gradient: LinearGradient(
                colors: [.red, .blue, .green, .yellow],
                startPoint: .leading,
                endPoint: .trailing
            ))
            HeadingB(text: "Heading 1 (48)")
            HeadingM(text: "Heading 2 (36)")
            HeadingS(text: "Heading 3 (24)")
            Caption(text: "Caption (18)")
            CommonText(text: "Normal Text (16)")
            CommonTextC(text: "Normal Text Colorful (16)", color: .blue)
            CommonText(text: "Normal Text Semibold (16)",
                       semibold: true)
            CommonTextS(text: "Small Text (14)")
            CommonTextS(text: "Small Text Semibold (14)",
                        semibold: true)
        }.frame(maxHeight: .infinity, alignment: .top))
    }
}
