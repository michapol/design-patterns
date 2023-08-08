//
//  StandardUser.swift
//  Flyweight
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

class StandardUser {
    let name: String

    let team: String
    let mission: String

    let role: String
    let salary: Int
    let holiday: Int
    let sick: Int

    init(name: String, team: String, mission: String, role: String, salary: Int, holiday: Int, sick: Int) {
        self.name = name
        self.team = team
        self.mission = mission
        self.role = role
        self.salary = salary
        self.holiday = holiday
        self.sick = sick
    }
}
