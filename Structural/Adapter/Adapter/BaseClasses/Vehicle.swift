//
//  Vehicle.swift
//  patterns
//
//  Created by Mike Pollard on 08/03/2023.
//

import Foundation

protocol Transport {
    var topSpeed: Double { get }
    var passangers: Int { get }
    var registration: String { get }
}

struct Vehicle: Transport {
    let topSpeed: Double
    let passangers: Int
    let registration: String
}
