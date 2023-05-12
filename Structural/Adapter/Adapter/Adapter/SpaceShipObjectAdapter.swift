//
//  SpaceShipAdapter.swift
//  patterns
//
//  Created by Mike Pollard on 08/03/2023.
//

import Foundation

struct SpaceShipObjectAdapter {
    let spaceShip: SpaceShip
}

extension SpaceShipObjectAdapter: Transport {
    var topSpeed: Double {
        spaceShip.thrust * spaceShip.thrustDuration
    }

    var passangers: Int {
        spaceShip.crew
    }

    var registration: String {
        spaceShip.name
    }
}
