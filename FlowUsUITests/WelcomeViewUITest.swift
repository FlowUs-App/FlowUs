//
//  WelcomeViewUITest.swift
//  FlowUsUITests
//
//  Created by Lucas Goldner on 07.05.22.
//

import XCTest

class WelcomeViewUITest: XCTestCase {
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

    func testNavigateRegisterView() {
        app.buttons["JoinNow"].tap()
        let createAccountPredicate = NSPredicate(format: "label beginswith 'Create Account'")
        XCTAssert(app.staticTexts.element(matching: createAccountPredicate).exists)
        app.buttons["backButton"].tap()
        testWelcomeTextExists()
    }
    
    func testNavigateLoginView() {
        app.buttons["Login"].tap()
        let createAccountPredicate = NSPredicate(format: "label beginswith 'Hello again'")
        XCTAssert(app.staticTexts.element(matching: createAccountPredicate).exists)
        app.buttons["backButton"].tap()
        testWelcomeTextExists()
    }
}
