//
//  LoginOO.swift
//  FlowUs
//
//  Created by Lucas Goldner on 01.05.22.
//

import AVFoundation
import Foundation

class LoginOO: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    var audioPlayer: AVAudioPlayer?

    func playFrogSound() {
        print("Played")
        let soundFileName = "Frog"
        guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "mp3") else {
            print("Hund")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        } catch {
            print(error.localizedDescription)
        }
        audioPlayer?.play()
    }

    func toogleViewPassword() {
        showPassword.toggle()
    }

    func sendForgotPasswordEmail() {}

    func signIn() {
        print(email)
        print(password)
    }
}
