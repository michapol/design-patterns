//
//  AdapterApp.swift
//  Adapter
//
//  Created by Mike Pollard on 12/05/2023.
//

import Foundation

struct AdapterApp {
    func run() {
        printDescription()
        getTopSpeed()
    }

    private func printDescription() {
        print("Adapter is a structural design pattern that allows objects with incompatible interfaces to collaborate.\n")
    }

    private func getTopSpeed() {
        let vehicle = Vehicle(topSpeed: 45, passangers: 4, registration: "AB12 CDE")
        print("Vehicle Top Speed: \(vehicle.topSpeed)")

        let spaceShip = SpaceShip(thrust: 200, thrustDuration: 60.0, crew: 7, name: "Enterprise")
        let spaceShipObjectAdapter = SpaceShipObjectAdapter(spaceShip: spaceShip)
        print("Spaceship (object adapter) Top Speed: \(spaceShipObjectAdapter.topSpeed)")

        let spaceShipClassAdapter = SpaceShipClassAdapter(thrust: 200, thrustDuration: 60.0, crew: 7, name: "Discovery")
        print("Spaceship (class adapter) Top Speed: \(spaceShipClassAdapter.topSpeed)")
    }
}
