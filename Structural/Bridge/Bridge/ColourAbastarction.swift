//
//  ColourAbastarction.swift
//  Bridge
//
//  Created by Mike Pollard on 06/07/2023.
//

import Foundation

enum Colour: String {
    case 🔴
    case 🟡
    case 🟢
    case 🔵
}

extension Colour {
    var provide: String {
        self.rawValue
    }
}
