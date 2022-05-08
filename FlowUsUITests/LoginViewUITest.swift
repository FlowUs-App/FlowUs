//
//  LoginViewUITest.swift
//  FlowUsUITests
//
//  Created by Lucas Goldner on 08.05.22.
//

import XCTest

class LoginViewUITest: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launchArguments = ["-AppleLanguages", "(en)"]
        app.launch()
        app.buttons["Login"].tap()
    }

    func testLoginTextExists() {
        let helloAgainPredicate = NSPredicate(format: "label beginswith 'Hello again'")
        XCTAssert(app.staticTexts.element(matching: helloAgainPredicate).exists)
    }

    func testNavigateWelcomeView() {
        app.buttons["backButton"].tap()
        let welcomePredicate = NSPredicate(format: "label beginswith 'Welcome to'")
        XCTAssert(app.staticTexts.element(matching: welcomePredicate).exists)
        app.buttons["Login"].tap()
        testLoginTextExists()
    }

    func testNavigateRegisterView() {
        app.swipeUp()
        app.buttons["NotAMember"].tap()
        let createAccountPredicate = NSPredicate(format: "label beginswith 'Create Account'")
        XCTAssert(app.staticTexts.element(matching: createAccountPredicate).exists)
        app.buttons["backButton"].tap()
        testLoginTextExists()
    }
}
