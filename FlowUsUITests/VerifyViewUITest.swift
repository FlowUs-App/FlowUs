//
//  VerifyViewUITest.swift
//  FlowUsUITests
//
//  Created by Lucas Goldner on 08.05.22.
//

import XCTest

class VerifyViewUITest: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launchArguments = ["-AppleLanguages", "(en)"]
        app.launch()
        app.buttons["JoinNow"].tap()
        app.buttons["Verify"].tap()
    }

    func testVerifyTextExists() {
        let lastStepPredicate = NSPredicate(format: "label beginswith 'Last Step'")
        XCTAssert(app.staticTexts.element(matching: lastStepPredicate).exists)
    }

    func testNavigateRegisterView() {
        app.buttons["backButton"].tap()
        let creatAccountPredicate = NSPredicate(format: "label beginswith 'Create Account'")
        XCTAssert(app.staticTexts.element(matching: creatAccountPredicate).exists)
        app.buttons["Verify"].tap()
        testVerifyTextExists()
    }
}
