//
//  ContentView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.07.21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var oo = ContentViewOO()
    
    var body: some View {
        VStack {
            List(oo.data) { datum in
                Text(datum.name)
            }
        }
        .onAppear {
            oo.fetch()
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
