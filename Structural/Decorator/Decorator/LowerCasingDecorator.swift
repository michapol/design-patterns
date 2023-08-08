//
//  LowerCasingDecorator.swift
//  Decorator
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

struct LowerCasingDecorator: TextSaverDecorator {
    var basicStruct: TextSaverProtocol

    mutating func writeText(_ text: String) {
        basicStruct.writeText(text.lowercased())
    }

    func readText() -> String {
        basicStruct.readText().lowercased()
    }
}
