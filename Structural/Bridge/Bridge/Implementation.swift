//
//  Implementation.swift
//  Bridge
//
//  Created by Mike Pollard on 06/07/2023.
//

import Foundation

struct ProblemImplementation {
    let message: Message

    init(message: Message) {
        self.message = message
        message.display()
    }
}

struct BridgeImplementation {
    let message: Messages

    init(message: Messages) {
        self.message = message
        message.display()
    }
}
