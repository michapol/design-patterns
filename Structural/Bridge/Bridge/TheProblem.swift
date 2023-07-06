//
//  Messages.swift
//  Bridge
//
//  Created by Mike Pollard on 06/07/2023.
//

import Foundation

protocol Message {
    func display()
}

struct YellowWarningMessage: Message {
    func display() {
        print("🟡" + " : " + "Warning")
    }
}

struct RedWarningMessage: Message {
    func display() {
        print("🔴" + " : " + "Warning")
    }
}

struct YellowErrorMessage: Message {
    func display() {
        print("🟡" + " : " + "Error")
    }
}

struct RedErrorMessage: Message {
    func display() {
        print("🔴" + " : " + "Error")
    }
}
