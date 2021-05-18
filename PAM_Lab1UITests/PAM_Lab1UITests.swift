//
//  PAM_Lab1UITests.swift
//  PAM_Lab1UITests
//
//  Created by Victoria Belinschi on 2/4/21.
//

import XCTest

class PAM_Lab1UITests: XCTestCase {
    var app: XCUIApplication!

       override func setUp() {
           continueAfterFailure = false
           app = XCUIApplication()
           app.launchArguments = ["testing"]
           app.launch()
       }
    func testLoginFlow() {
        app.buttons["See Holiday Calendar"].doubleTap()
        let searchbar = app.tables.searchFields["Search"]
           searchbar.tap()
           searchbar.typeText("RO")



           let message = app.staticTexts["Hello World!"]
           XCTAssertTrue(message.waitForExistence(timeout: 5))
       }
    
    override func setUpWithError() throws {
       
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {

    }

    func testExample() throws {
   
        let app = XCUIApplication()
        app.launch()

    
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
