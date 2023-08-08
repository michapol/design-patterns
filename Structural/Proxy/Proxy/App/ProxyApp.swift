//
//  ProxyApp.swift
//  Proxy
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

struct ProxyApp {
    func run() {
        printDescription()
        useProxy()
    }

    private func printDescription() {
        print("Proxy is a structural design pattern that lets you provide a substitute or placeholder for another object. A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object.\n")
    }

    private func useProxy() {
        let proxy = ProxyOfBigPowerfulClass()
        proxy.save(data: "Test Save", key: "test_save")
        print("Stored Data: \(proxy.readData(key: "test_save") ?? "No Data")")
        print("Stored Data: \(proxy.readData(key: "test_save") ?? "No Data")")
        print("Stored Data: \(proxy.readData(key: "test_save") ?? "No Data")")
    }
}
