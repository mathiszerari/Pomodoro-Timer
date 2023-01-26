//
//  RedType.swift
//  Pomodoro Timer
//
//  Created by Mathis Zerari on 26/01/2023.
//

import Foundation

enum RedSwitch: String, Codable, CaseIterable  {
    case twentyfive = "25 / 5",
    fiveteen = "50 / 10"
    
    var type: String {
        switch self {
            
        case .twentyfive:
            return "25 / 5"
        case .fiveteen:
            return "50 / 10"
        }
    }
}
