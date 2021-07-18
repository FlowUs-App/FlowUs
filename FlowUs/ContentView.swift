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

// Observable Object
import Combine
import SwiftUI

class ContentViewOO: ObservableObject {
    @Published var data: [ContentViewDO] = []
    
    func fetch() {
        data = [ContentViewDO(name: "Datum 1"),
                ContentViewDO(name: "Datum 2"),
                ContentViewDO(name: "Datum 3")]
    }
}

// Data Object
import Foundation

struct ContentViewDO: Identifiable {
    let id = UUID()
    var name: String
}
