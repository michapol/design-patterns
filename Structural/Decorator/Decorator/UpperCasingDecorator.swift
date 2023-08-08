//
//  UpperCasingDecorator.swift
//  Decorator
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

struct UpperCasingDecorator: TextSaverDecorator {
    var basicStruct: TextSaverProtocol

    mutating func writeText(_ text: String) {
        basicStruct.writeText(text.uppercased())
    }

    func readText() -> String {
        basicStruct.readText().uppercased()
    }
}
