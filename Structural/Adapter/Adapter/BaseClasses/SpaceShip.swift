//
//  SpaceShip.swift
//  patterns
//
//  Created by Mike Pollard on 08/03/2023.
//

import Foundation

class SpaceShip {
    let thrust: Double
    let thrustDuration: Double
    let crew: Int
    let name: String

    init(thrust: Double, thrustDuration: Double, crew: Int, name: String) {
        self.thrust = thrust
        self.thrustDuration = thrustDuration
        self.crew = crew
        self.name = name
    }
}
