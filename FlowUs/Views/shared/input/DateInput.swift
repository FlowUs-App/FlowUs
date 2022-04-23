//
//  DateInput.swift
//  FlowUs
//
//  Created by Lucas Goldner on 23.04.22.
//

import L10n_swift
import SwiftUI

struct DateInput: View {
    @Environment(\.colorScheme) var colorScheme
    @State var date = Date()
    @State private var dateID: String = UUID().uuidString
    let calendar = Calendar.current
    let width: Double
    let height: Double
    var color: Color = .white
    var placeholderColor: Color = .white
    var placeholderText: String = "Placeholder"

    var body: some View {
        GlasmorphicCard(content: {
            ZStack {
                CommonText(text: calendar.isDateInToday(date) ? placeholderText :
                    date.l10n { formatter in
                        formatter.dateStyle = .medium
                    }, gutterBottom: false)
                    .foregroundColor(color)
                    .opacity(calendar.isDateInToday(date) ? 0.5 : 1)

                DatePicker("", selection: $date, in: ...Date(), displayedComponents: .date)
                    .datePickerStyle(CompactDatePickerStyle())
                    .frame(width: width, height: height)
                    .clipped()
                    .labelsHidden()
                    .colorMultiply(.black.opacity(0.0001))
            }
        }, addPadding: true).frame(width: width, height: height)
    }
}

struct DateInput_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPreview(content:
            DateInput(width: UIScreen.screenWidth / 2.5, height: 40, placeholderText: "Birthday"),
            gradient: true)
    }
}
