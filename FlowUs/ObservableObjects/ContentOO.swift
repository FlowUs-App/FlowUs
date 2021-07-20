//
//  ContentObservableObject.swift
//  FlowUs
//
//  Created by Lucas Goldner on 21.07.21.
//
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
