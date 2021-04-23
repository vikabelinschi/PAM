//
//  HolidaysTableViewModel.swift
//  PAM_Lab1
//
//  Created by Victoria Belinschi on 4/23/21.
//

import Foundation
enum HolidaysTableError {
    case connectionError(Error)
    case mappingFailed
    case reloadFailed
}
protocol HolidaysTableViewModel {

    var state: Holidays { get}
    

    func reloadMovies()
    func loadMoreMovies()
}
