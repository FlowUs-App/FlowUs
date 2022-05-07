//
//  RegisterViewUITest.swift
//  FlowUsUITests
//
//  Created by Lucas Goldner on 07.05.22.
//

import XCTest

class RegisterViewUITest: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launchArguments = ["-AppleLanguages", "(en)"]
        app.launch()
    }
    
    func testWelcomeTextExists() {
        let welcomeText = NSPredicate(format: "label beginswith 'Welcome to'")
        let flowUsText = NSPredicate(format: "label endswith 'FlowUs'")
        XCTAssert(app.staticTexts.element(matching: welcomeText).exists)
        XCTAssert(app.staticTexts.element(matching: flowUsText).exists)
    }

    func testNavigation() {
        app.buttons["Join now"].tap()
        let createAccountPredicate = NSPredicate(format: "label beginswith 'Create Account'")
        XCTAssert(app.staticTexts.element(matching: createAccountPredicate).exists)
    }
}
