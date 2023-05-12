//
//  SpaceShipClassAdapter.swift
//  patterns
//
//  Created by Mike Pollard on 08/03/2023.
//

import Foundation

class SpaceShipClassAdapter: SpaceShip {}

extension SpaceShipClassAdapter: Transport {
    var topSpeed: Double {
        thrust * thrustDuration
    }

    var passangers: Int {
        crew
    }

    var registration: String {
        name
    }
}
