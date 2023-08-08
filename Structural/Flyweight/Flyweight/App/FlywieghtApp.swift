//
//  FlywieghtApp.swift
//  Flyweight
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

struct FlyweightApp {
    func run() {
        printDescription()

        let standardUserInstanceSize = class_getInstanceSize(StandardUser.self)

        let flyweightTeamInstanceSize = class_getInstanceSize(FlyweightTeam.self)
        let flyweightRoleInstanceSize = class_getInstanceSize(FlyweightRole.self)
        let flyweightUserInstanceSize = class_getInstanceSize(FlyweightUser.self)

        let standardUsers = createSomeStandardUsers()
        let (flyweightTeam, flyweightRole, flyweightUser) = createSomeFlyweightUsers()

        let standardSize = standardUserInstanceSize * standardUsers.count

        let flyweightTeamSize = flyweightTeamInstanceSize * flyweightTeam.count
        let flyweightRoleSize = flyweightRoleInstanceSize * flyweightRole.count
        let flyweightUserSize = flyweightUserInstanceSize * flyweightUser.count
        let flyweightSize = flyweightTeamSize + flyweightRoleSize + flyweightUserSize

        print("Total Standard User Instances Size: \(standardSize)")
        print("Total Flyweight User Instances Size: \(flyweightSize)")
    }

    private func printDescription() {
        print("Flyweight is a structural design pattern that lets you fit more objects into the available amount of RAM by sharing common parts of state between multiple objects instead of keeping all of the data in each object.\n")
    }

    private func createSomeStandardUsers() -> [StandardUser] {
        var users = [StandardUser]()

        users.append(StandardUser(
            name: "Alison",
            team: "iOS",
            mission: "Best App",
            role: "Lead",
            salary: 75,
            holiday: 25,
            sick: 7
        ))
        users.append(StandardUser(
            name: "Bert",
            team: "iOS",
            mission: "Best App",
            role: "Developer",
            salary: 50,
            holiday: 20,
            sick: 5
        ))
        users.append(StandardUser(
            name: "Carly",
            team: "iOS",
            mission: "Best App",
            role: "Developer",
            salary: 50,
            holiday: 20,
            sick: 5
        ))
        users.append(StandardUser(
            name: "Derick",
            team: "iOS",
            mission: "Best App",
            role: "Developer",
            salary: 50,
            holiday: 20,
            sick: 5
        ))
        users.append(StandardUser(
            name: "Emma",
            team: "iOS",
            mission: "Best App",
            role: "Developer",
            salary: 50,
            holiday: 20,
            sick: 5
        ))
        users.append(StandardUser(
            name: "Fiona",
            team: "iOS",
            mission: "Best App",
            role: "Developer",
            salary: 50,
            holiday: 20,
            sick: 5
        ))

        users.append(StandardUser(
            name: "Gemma",
            team: "Android",
            mission: "To be as good as iOS",
            role: "Lead",
            salary: 75,
            holiday: 25,
            sick: 7
        ))
        users.append(StandardUser(
            name: "Henry",
            team: "Android",
            mission: "To be as good as iOS",
            role: "Developer",
            salary: 50,
            holiday: 20,
            sick: 5
        ))
        users.append(StandardUser(
            name: "Ian",
            team: "Android",
            mission: "To be as good as iOS",
            role: "Developer",
            salary: 50,
            holiday: 20,
            sick: 5
        ))
        users.append(StandardUser(
            name: "Janet",
            team: "Android",
            mission: "To be as good as iOS",
            role: "Developer",
            salary: 50,
            holiday: 20,
            sick: 5
        ))
        users.append(StandardUser(
            name: "Kevin",
            team: "Android",
            mission: "To be as good as iOS",
            role: "Developer",
            salary: 50,
            holiday: 20,
            sick: 5
        ))
        users.append(StandardUser(
            name: "Lisa",
            team: "Android",
            mission: "To be as good as iOS",
            role: "Developer",
            salary: 50,
            holiday: 20,
            sick: 5
        ))

        return users
    }

    private func createSomeFlyweightUsers() -> ([FlyweightTeam], [FlyweightRole], [FlyweightUser]) {
        let iOSteam = FlyweightTeam(name: "iOS", mission: "Best App")
        let androidTeam = FlyweightTeam(name: "Android", mission: "To be as good as iOS")
        let devRole = FlyweightRole(name: "Developer", salary: 50, holiday: 20, sick: 5)
        let leadRole = FlyweightRole(name: "Lead", salary: 75, holiday: 25, sick: 7)

        var users = [FlyweightUser]()
        users.append(FlyweightUser(name: "Alison", team: iOSteam, role: leadRole))
        users.append(FlyweightUser(name: "Bert", team: iOSteam, role: devRole))
        users.append(FlyweightUser(name: "Carly", team: iOSteam, role: devRole))
        users.append(FlyweightUser(name: "Derick", team: iOSteam, role: devRole))
        users.append(FlyweightUser(name: "Emma", team: iOSteam, role: devRole))
        users.append(FlyweightUser(name: "Fiona", team: iOSteam, role: devRole))

        users.append(FlyweightUser(name: "Gemma", team: androidTeam, role: leadRole))
        users.append(FlyweightUser(name: "Henry", team: androidTeam, role: devRole))
        users.append(FlyweightUser(name: "Ian", team: androidTeam, role: devRole))
        users.append(FlyweightUser(name: "Janet", team: androidTeam, role: devRole))
        users.append(FlyweightUser(name: "Kevin", team: androidTeam, role: devRole))
        users.append(FlyweightUser(name: "Lisa", team: androidTeam, role: devRole))
        
        return ([iOSteam, androidTeam], [devRole, leadRole], users)
    }
}
