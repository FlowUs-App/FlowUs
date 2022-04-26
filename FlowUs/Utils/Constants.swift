//
//  Constants.swift
//  FlowUs
//
//  Created by Lucas Goldner on 17.04.22.
//

import SwiftUI

enum AppRoute: Equatable {
    case Welcome
    case Login
    case Register
    case Verify
}

struct CommonBackground: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        colorScheme == .light ?
            Color(hex: "F5F8FF").ignoresSafeArea() : Color.black.ignoresSafeArea()
    }
}

enum DeviceNames: String {
    case iPhone_4s = "iPhone 4s"
    case iPhone_5 = "iPhone 5"
    case iPhone_5s = "iPhone 5s"
    case iPhone_6_Plus = "iPhone 6 Plus"
    case iPhone_6 = "iPhone 6"
    case iPhone_6s = "iPhone 6s"
    case iPhone_6s_Plus = "iPhone 6s Plus"
    case iPhone_SE_1st_generation = "iPhone SE (1st generation)"
    case iPhone_7 = "iPhone 7"
    case iPhone_7_Plus = "iPhone 7 Plus"
    case iPhone_8 = "iPhone 8"
    case iPhone_8_Plus = "iPhone 8 Plus"
    case iPhone_X = "iPhone X"
    case iPhone_Xs = "iPhone Xs"
    case iPhone_Xs_Max = "iPhone Xs Max"
    case iPhone_Xʀ = "iPhone Xʀ"
    case iPhone_11 = "iPhone 11"
    case iPhone_11_Pro = "iPhone 11 Pro"
    case iPhone_11_Pro_Max = "iPhone 11 Pro Max"
    case iPhone_SE_2nd_generation = "iPhone SE (2nd generation)"
    case iPhone_12_mini = "iPhone 12 mini"
    case iPhone_12 = "iPhone 12"
    case iPhone_12_Pro = "iPhone 12 Pro"
    case iPhone_12_Pro_Max = "iPhone 12 Pro Max"
    case iPhone_13_Pro = "iPhone 13 Pro"
    case iPhone_13_Pro_Max = "iPhone 13 Pro Max"
    case iPhone_13_mini = "iPhone 13 mini"
    case iPhone_13 = "iPhone 13"
    case iPhone_SE_3rd_generation = "iPhone SE (3rd generation)"
    case iPod_touch_7th_generation = "iPod touch (7th generation)"
    case iPad_2 = "iPad 2"
    case iPad_Retina = "iPad Retina"
    case iPad_Air = "iPad Air"
    case iPad_mini_2 = "iPad mini 2"
    case iPad_mini_3 = "iPad mini 3"
    case iPad_mini_4 = "iPad mini 4"
    case iPad_Air_2 = "iPad Air 2"
    case iPad_Pro_9_7inch = "iPad Pro (9.7-inch)"
    case iPad_Pro_12_9inch_1st_generation = "iPad Pro (12.9-inch) (1st generation)"
    case iPad_5th_generation = "iPad (5th generation)"
    case iPad_Pro_12_9inch_2nd_generation = "iPad Pro (12.9-inch) (2nd generation)"
    case iPad_Pro_10_5inch = "iPad Pro (10.5-inch)"
    case iPad_6th_generation = "iPad (6th generation)"
    case iPad_7th_generation = "iPad (7th generation)"
    case iPad_Pro_11inch_1st_generation = "iPad Pro (11-inch) (1st generation)"
    case iPad_Pro_12_9inch_3rd_generation = "iPad Pro (12.9-inch) (3rd generation)"
    case iPad_Pro_11inch_2nd_generation = "iPad Pro (11-inch) (2nd generation)"
    case iPad_Pro_12_9inch_4th_generation = "iPad Pro (12.9-inch) (4th generation)"
    case iPad_mini_5th_generation = "iPad mini (5th generation)"
    case iPad_Air_3rd_generation = "iPad Air (3rd generation)"
    case iPad_8th_generation = "iPad (8th generation)"
    case iPad_Air_4th_generation = "iPad Air (4th generation)"
    case Apple_TV = "Apple TV"
    case Apple_TV_4K = "Apple TV 4K"
    case Apple_TV_4K_at_1080p = "Apple TV 4K (at 1080p)"
    case Apple_Watch__38mm = "Apple Watch - 38mm"
    case Apple_Watch__42mm = "Apple Watch - 42mm"
    case Apple_Watch_Series_2__38mm = "Apple Watch Series 2 - 38mm"
    case Apple_Watch_Series_2__42mm = "Apple Watch Series 2 - 42mm"
    case Apple_Watch_Series_3__38mm = "Apple Watch Series 3 - 38mm"
    case Apple_Watch_Series_3__42mm = "Apple Watch Series 3 - 42mm"
    case Apple_Watch_Series_4__40mm = "Apple Watch Series 4 - 40mm"
    case Apple_Watch_Series_4__44mm = "Apple Watch Series 4 - 44mm"
    case Apple_Watch_Series_5__40mm = "Apple Watch Series 5 - 40mm"
    case Apple_Watch_Series_5__44mm = "Apple Watch Series 5 - 44mm"
    case Apple_Watch_SE__40mm = "Apple Watch SE - 40mm"
    case Apple_Watch_SE__44mm = "Apple Watch SE - 44mm"
    case Apple_Watch_Series_6__40mm = "Apple Watch Series 6 - 40mm"
    case Apple_Watch_Series_6__44mm = "Apple Watch Series 6 - 44mm"
}

func dummyFunction() {
    print("test")
}
