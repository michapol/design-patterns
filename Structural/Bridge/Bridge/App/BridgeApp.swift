//
//  BridgeApp.swift
//  Bridge
//
//  Created by Mike Pollard on 06/07/2023.
//

import Foundation

struct BridgeApp {
    func run() {
        printDescription()
        displayProblem()
        displayBridge()
    }

    private func printDescription() {
        print("Bridge is a structural design pattern that lets you split a large class or a set of closely related classes into two separate hierarchies—abstraction and implementation—which can be developed independently of each other.\n")
    }

    private func displayProblem() {
        let implementation = ProblemImplementation(message: YellowWarningMessage())
    }

    private func displayBridge() {
        let implementation = BridgeImplementation(message: .warning(.🟡))
    }
}
