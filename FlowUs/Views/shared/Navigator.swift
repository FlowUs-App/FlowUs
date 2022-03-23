//
//  Navigator.swift
//  FlowUs
//
//  Created by Lucas Goldner on 23.03.22.
//

import SwiftUI

struct Navigator: View {
    @State var open = false;
    
    var body: some View {
        ZStack{
            Button(action: {self.open.toggle()}){
                Image(systemName: "plus").foregroundColor(.white).font(.system(size: 38, weight: .bold))
            }
            .padding(24).background(Color.pink).mask(Circle())
        }
    }
}

struct Navigator_Previews: PreviewProvider {
    static var previews: some View {
        Navigator()
    }
}
