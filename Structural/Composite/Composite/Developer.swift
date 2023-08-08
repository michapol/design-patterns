//
//  Employee.swift
//  patterns
//
//  Created by Mike Pollard on 20/04/2023.
//

import Foundation

class Developer: DevelopmentHours {
    let workingHours: Double

    var developmentHours: Double {
        workingHours * 0.6
    }

    init(workingHours: Double) {
        self.workingHours = workingHours
    }
}
