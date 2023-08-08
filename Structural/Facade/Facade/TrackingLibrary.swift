//
//  TrackingLibrary.swift
//  patterns
//
//  Created by Mike Pollard on 28/04/2023.
//

import Foundation

class TrackingLibrary {
    private let customerID: String
    private let licenseKey: String

    private var screenViewTrackingEnabled: Bool = false
    private var userConsentObtained: Bool = false

    init(customerID: String, licenseKey: String) {
        self.customerID = customerID
        self.licenseKey = licenseKey
    }

    func confirmUserHasConsented(_ consented: Bool) {
        userConsentObtained = consented
    }

    func enableScreenViewTracking(_ enabled: Bool) {
        screenViewTrackingEnabled = enabled
    }

    func trackScreenView(name: String, module: String?, timeStamp: Date, meta: [String: String]) {
        guard userConsentObtained, screenViewTrackingEnabled else { return }
        // ...do tracking stuff here

        print("Tracking Library - Screen: \(name), When: \(timeStamp.description)")
    }
}

class TrackingLibraryFacade {
    private var haveEnabledScreenTracking = false

    let trackingLibrary: TrackingLibrary

    init() {
        trackingLibrary = TrackingLibrary(customerID: "id", licenseKey: "key")
        trackingLibrary.confirmUserHasConsented(true)
    }

    func track(screen: Screen, userType: UserType) {
        let now = Date()
        let meta: [String: String] = ["UserType": userType.rawValue]

        if !haveEnabledScreenTracking {
            trackingLibrary.enableScreenViewTracking(true)
            haveEnabledScreenTracking = true
        }
        
        trackingLibrary.trackScreenView(name: screen.rawValue, module: nil, timeStamp: now, meta: meta)
    }

    enum Screen: String {
        case onboarding
        case settings
        case explore
        case search
    }

    enum UserType: String {
        case individual
        case corporate
        case developer
        case testing
    }
}
