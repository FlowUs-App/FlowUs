//
//  LoginOO.swift
//  FlowUs
//
//  Created by Lucas Goldner on 01.05.22.
//

import AVFoundation
import Foundation

class LoginOO: ObservableObject {
    @Published var data: LoginDO
    var audioPlayer: AVAudioPlayer?

    init() {
        data = .init(id: "",
                     email: "",
                     password: "",
                     showPassword: false)
    }

    func playFrogSound() {
        let soundFileName = "Frog"
        guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "mp3") else {
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
        data.showPassword.toggle()
    }

    func sendForgotPasswordEmail() {}

    func signIn() {
        // TODO: Add login functionality
        print(data.email)
        print(data.password)
    }
}
