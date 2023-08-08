//
//  ProxyOfBigPowerfulClass.swift
//  Proxy
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

class ProxyOfBigPowerfulClass: CommonInterface {

    private lazy var bigPowerfulClass = BigExpensiveClass()
    private var dataCache = [String: String]()

    func save(data: String, key: String) {
        bigPowerfulClass.save(data: data, key: key)
    }

    func readData(key: String) -> String? {
        if let data = dataCache[key] {
            print("Data returned from cheap Proxy!")
            return data
        }

        let data = bigPowerfulClass.readData(key: key)
        dataCache[key] = data
        return data
    }
}
