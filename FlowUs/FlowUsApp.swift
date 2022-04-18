//
//  FlowUsApp.swift
//  FlowUs
//
//  Created by Lucas Goldner on 18.07.21.
//

import Firebase
import L10n_swift
import SwiftUI
import UIPilot

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool
    {
        FirebaseApp.configure()
        Configuration.shared.setupConfig()
        return true
    }
}

@main
struct FlowUsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var pilot = UIPilot(initial: AppRoute.Welcome)

    var body: some Scene {
        WindowGroup {
            UIPilotHost(pilot) { route in
                switch route {
                case .Welcome:
                    return AnyView(WelcomeView().navigationBarHidden(true))
                case .Login:
                    return AnyView(LoginView().navigationBarBackButtonHidden(true))
                case .Register:
                    return AnyView(RegisterView().navigationBarBackButtonHidden(true))
                }
            }
        }
    }
}
