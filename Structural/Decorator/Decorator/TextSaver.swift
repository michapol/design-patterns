//
//  TextSaver.swift
//  Decorator
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

protocol TextSaverProtocol {
    mutating func writeText(_ text: String)
    func readText() -> String
}

struct TextSaver: TextSaverProtocol {
    private var text: String = ""

    mutating func writeText(_ text: String) {
        self.text = text
    }

    func readText() -> String {
        self.text
    }
}

