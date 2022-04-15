//
//  Icon.swift
//  FlowUs
//
//  Created by Lucas Goldner on 15.04.22.
//

import SwiftUI

struct Icon: View {
    var resize: Bool = false
    var path: String = "Icons/Frog"
    var body: some View {
        Image(uiImage: UIImage(named: path)!)
            .if(resize) { view in
                view.resizable()
            }
    }
}

struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Icon(resize: false)
            Icon(resize: true)
        }
    }
}
