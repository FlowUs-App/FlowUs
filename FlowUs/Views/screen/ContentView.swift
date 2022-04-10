//
//  ContentView.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.07.21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var ooContentView = ContentViewOO()
    
    var body: some View {
        VStack {
            List(ooContentView.data) { datum in
                Text(datum.name)
            }
        }
        .onAppear {
            ooContentView.fetch()
        }
    }
}

struct ContentViewPreview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
