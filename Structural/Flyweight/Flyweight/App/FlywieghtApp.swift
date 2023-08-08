//
//  FlywieghtApp.swift
//  Flyweight
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

struct FlyweightApp {
    func run() {
        printDescription()
    }

    private func printDescription() {
        print("Flyweight is a structural design pattern that lets you fit more objects into the available amount of RAM by sharing common parts of state between multiple objects instead of keeping all of the data in each object.\n")
    }
}
