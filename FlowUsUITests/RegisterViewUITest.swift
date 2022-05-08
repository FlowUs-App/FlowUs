//
//  RegisterViewUITest.swift
//  FlowUsUITests
//
//  Created by Lucas Goldner on 08.05.22.
//

import XCTest

class RegisterViewUITest: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launchArguments = ["-AppleLanguages", "(en)"]
        app.launch()
        app.buttons["JoinNow"].tap()
    }

    func testCreateAccountTextExists() {
        let creatAccountPredicate = NSPredicate(format: "label beginswith 'Create Account'")
        XCTAssert(app.staticTexts.element(matching: creatAccountPredicate).exists)
    }

    func testNavigateWelcomeView() {
        app.buttons["backButton"].tap()
        let welcomePredicate = NSPredicate(format: "label beginswith 'Welcome to'")
        XCTAssert(app.staticTexts.element(matching: welcomePredicate).exists)
        app.buttons["JoinNow"].tap()
        testCreateAccountTextExists()
    }

    func testNavigateVerifyView() {
        app.buttons["Verify"].tap()
        let verifyPredicate = NSPredicate(format: "label beginswith 'Last Step'")
        XCTAssert(app.staticTexts.element(matching: verifyPredicate).exists)
        app.buttons["backButton"].tap()
        testCreateAccountTextExists()
    }
}
