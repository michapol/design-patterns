//
//  TextSaverDecorator.swift
//  Decorator
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

protocol TextSaverDecorator: TextSaverProtocol {
    var basicStruct: TextSaverProtocol { get set }
}

extension TextSaverDecorator {
    mutating func writeText(_ text: String) {
        basicStruct.writeText(text)
    }

    func readText() -> String {
        basicStruct.readText()
    }
}
