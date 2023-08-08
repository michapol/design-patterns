//
//  Manager.swift
//  patterns
//
//  Created by Mike Pollard on 20/04/2023.
//

import Foundation

class Manager: Developer {
    let developers: [Developer]

    init(workingHours: Double, developers: [Developer]) {
        self.developers = developers
        super.init(workingHours: workingHours)
    }

    override var developmentHours: Double {
        developers.map { $0.developmentHours }.reduce(0, +) + workingHours * 0.4
    }
}
