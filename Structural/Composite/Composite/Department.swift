//
//  Department.swift
//  patterns
//
//  Created by Mike Pollard on 20/04/2023.
//

import Foundation

class CompositeDepartment {
    let name: String
    let manager: Developer

    init(name: String, manager: Developer) {
        self.name = name
        self.manager = manager
    }
}

extension CompositeDepartment: DevelopmentHours {
    var developmentHours: Double {
        manager.developmentHours
    }
}
