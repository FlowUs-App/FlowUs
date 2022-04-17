//
//  Configuration.swift
//  FlowUs
//
//  Created by Lucas Goldner on 17.04.22.
//

import Foundation

enum BaseUrl: String {
    case DEV = "https://flowus-dev.app"
    case STAGING = "https://flowus-staging.app"
    case PROD = "https://flowus-prod.app"
}

class Configuration {
    static let shared: Configuration = .init()
    var baseUrl: String?
    func setupConfig() {
        #if DEV
        self.baseUrl = BaseUrl.DEV.rawValue
        #elseif STAGING
        self.baseUrl = BaseUrl.STAGING.rawValue
        #elseif PROD
        self.baseUrl = BaseUrl.PROD.rawValue
        #endif
    }
}
