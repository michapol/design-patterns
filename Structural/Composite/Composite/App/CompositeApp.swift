//
//  CompositeApp.swift
//  Composite
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

struct CompositeApp {
    func run() {
        printDescription()

        let departments = createDepartments()
        let department = departments.randomElement()!.name
        let devHours = getDevHours(for: department, from: departments)
        printResult(devHours: devHours, for: department)
    }

    private func printDescription() {
        print("Composite is a structural design pattern that lets you compose objects into tree structures and then work with these structures as if they were individual objects.\n")
    }

    private func createDepartments() -> [CompositeDepartment] {
        var departments = [CompositeDepartment]()

        departments.append(createDepartment(named: "iOS", devs: 7))
        departments.append(createDepartment(named: "Android", devs: 5))
        departments.append(createDepartment(named: "JS", devs: 10))
        departments.append(createDepartment(named: "BE", devs: 12))
        departments.append(createDepartment(named: "Apprentices", devs: 3))

        return departments
    }

    private func createDepartment(named: String, devs: Int) -> CompositeDepartment {
        let devs = (0..<devs).map { _ in
            Developer(workingHours: Double(Int.random(in: 30..<40)))
        }
        let manager: Manager = Manager(workingHours: Double(Int.random(in: 30..<40)), developers: devs)
        return CompositeDepartment(name: named, manager: manager)
    }

    private func getDevHours(for department: String, from departments: [CompositeDepartment]) -> Double {
        departments.first { $0.name == department }?.developmentHours ?? 0.0
    }

    private func printResult(devHours: Double, for department: String) {
        print("The \(department) department has \(devHours) development hours available")
    }
}
