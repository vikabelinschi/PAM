//
//  URLSessionMock.swift
//  PAM_Lab1UITests
//
//  Created by Victoria Belinschi on 5/18/21.
//

import XCTest

class URLSessionMock: XCTestCase {
    
    var sut: URLSession!
    
    override func setUp() {
        super.setUp()
        sut = URLSession(configuration: URLSessionConfiguration.default)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    private func getHolidaySearchMokeEndpoint() -> URL? {
        
        let baseURL = "https://calendarific.com/api/v2/holidays"
        let aPikey = "6ce9b6cefbdf4a483318ba71123c1462e86ff6c3"
        guard var  urlComponents = URLComponents(string: baseURL) else {return nil}
        urlComponents.queryItems = [
            URLQueryItem(name: "method", value: "holiday.search"),
            URLQueryItem(name: "country", value: "Romania"),
            URLQueryItem(name: "year", value: "2007"),
            URLQueryItem(name: "api_key", value: aPikey),
            URLQueryItem(name: "format", value: "json")
        ]
       return urlComponents.url
    }
}
