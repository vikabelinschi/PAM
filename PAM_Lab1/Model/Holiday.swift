//
//  Holiday.swift
//  PAM_Lab1
//
//  Created by Victoria Belinschi on 4/23/21.
//

import Foundation

struct HolidayResponse: Decodable {
    var response:Holidays
}

struct Holidays: Decodable {
    var holidays:[HolidayDetail]
}

struct HolidayDetail: Decodable {
    var name:String
    var date:DateInfo
}

struct DateInfo: Decodable {
    var iso:String
}
