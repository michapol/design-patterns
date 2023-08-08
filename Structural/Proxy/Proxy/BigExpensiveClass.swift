//
//  BigExpensiveClass.swift
//  Proxy
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

class BigExpensiveClass: CommonInterface {

    private var dataStore = [String: String]()

    func save(data: String, key: String) {
        dataStore[key] = data
    }

    func readData(key: String) -> String? {
        print("Data returned from BigExpensiveClass")
        return dataStore[key]
    }
}
