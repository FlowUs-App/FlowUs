//
//  Navigator.swift
//  FlowUs
//
//  Created by Lucas Goldner on 23.03.22.
//

import FirebaseFirestore
import SwiftUI

struct Navigator: View {
    @State var open = false

    var body: some View {
        ZStack {
            Button(action: { self.open.toggle() }) {
                Image(systemName: "plus")
                    .rotationEffect(.degrees(open ? 45 : 90))
                    .foregroundColor(.white)
                    .font(.system(size: 38, weight: .bold))
                    .animation(.spring(response: 0.2, dampingFraction: 0.4, blendDuration: 0), value: false)
            }
            .padding(24).background(Color.pink).mask(Circle()).shadow(color: Color.pink, radius: 10).zIndex(10)

            MenuSecondaryButton(open: $open, icon: "bubble.left.fill", color: Color.blue, offsetY: -90)

            MenuSecondaryButton(open: $open, icon: "trash", color: Color.red, offsetX: -60, offsetY: -60, delay: 0.2)

            MenuSecondaryButton(open: $open, icon: "pencil", color: Color.purple, offsetX: -90, delay: 0.4)
        }
    }
}

struct MenuSecondaryButton: View {
    @Binding var open: Bool
    var icon = "pencil"
    var color = Color.blue
    var offsetX = 0
    var offsetY = 0
    var delay = 0.0

    var body: some View {
        Button(action: {}) {
            Image(systemName: icon).foregroundColor(.white).font(.system(size: 16, weight: .bold))
        }.padding()
            .background(color)
            .mask(Circle())
            .offset(x: open ? CGFloat(offsetX) : 0, y: open ? CGFloat(offsetY) : 0)
            .scaleEffect(open ? 1 : 0)
            .animation(.spring(response: 0.2, dampingFraction: 0.5, blendDuration: 0).delay(delay), value: false)
    }
}

struct Navigator_Previews: PreviewProvider {
    static var previews: some View {
        Navigator()
    }
}
