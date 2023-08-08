//
//  FlyweightRole.swift
//  Flyweight
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

class FlyweightRole {
    let name: String
    let salary: Int
    let holiday: Int
    let sick: Int

    init(name: String, salary: Int, holiday: Int, sick: Int) {
        self.name = name
        self.salary = salary
        self.holiday = holiday
        self.sick = sick
    }
}
