//
//  FacadeApp.swift
//  Facade
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

struct FacadeApp {
    func run() {
        printDescription()

        setupTracking()
        setupTrackingWithFacade()
    }

    private func printDescription() {
        print("Facade is a structural design pattern that provides a simplified interface to a library, a framework, or any other complex set of classes.\n")
    }

    private func setupTracking() {
        let tracker = TrackingLibrary(customerID: "id", licenseKey: "key")
        tracker.confirmUserHasConsented(true)

        tracker.enableScreenViewTracking(true)
        tracker.trackScreenView(
            name: "explore",
            module: nil,
            timeStamp: Date(),
            meta: ["UserType": "testing"]
        )
    }

    private func setupTrackingWithFacade() {
        let tracker = TrackingLibraryFacade()
        tracker.track(screen: .explore, userType: .testing)
    }
}
