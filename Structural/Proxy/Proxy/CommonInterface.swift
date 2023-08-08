//
//  CommonInterface.swift
//  Proxy
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

protocol CommonInterface {
    func save(data: String, key: String)
    func readData(key: String) -> String?
}
