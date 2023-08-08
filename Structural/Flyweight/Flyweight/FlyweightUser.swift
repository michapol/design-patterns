//
//  FlyweightUser.swift
//  Flyweight
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

class FlyweightUser {
    let name: String
    let team: FlyweightTeam
    let role: FlyweightRole

    init(name: String, team: FlyweightTeam, role: FlyweightRole) {
        self.name = name
        self.team = team
        self.role = role
    }
}
