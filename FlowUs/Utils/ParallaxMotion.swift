//
//  ParallaxMotion.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.04.22.
//  Code from https://trailingclosure.com/device-motion-effect/

import CoreMotion
import SwiftUI

class MotionManager: ObservableObject {
    @Published var pitch: Double = 0.0
    @Published var roll: Double = 0.0

    private var motionManager: CMMotionManager

    init() {
        self.motionManager = CMMotionManager()
        self.motionManager.deviceMotionUpdateInterval = 1 / 60
        self.motionManager.startDeviceMotionUpdates(to: .main) { motionData, error in
            guard error == nil else {
                print(error!)
                return
            }

            if let motionData = motionData {
                self.pitch = motionData.attitude.pitch
                self.roll = motionData.attitude.roll
            }
        }
    }
}
