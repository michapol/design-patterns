//
//  DecoratorApp.swift
//  Decorator
//
//  Created by Mike Pollard on 08/08/2023.
//

import Foundation

struct DecoratorApp {
    func run() {
        printDescription()

        let basicTextSaver = TextSaver()
        let textToSave = "This is a MIXED string"

        createUpperCaseDecorator(for: basicTextSaver, with: textToSave)
        createLowerCaseDecorator(for: basicTextSaver, with: textToSave)
    }

    private func printDescription() {
        print("Decorator is a structural design pattern that lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors.\n")
    }

    private func createUpperCaseDecorator(for saver: TextSaver, with text: String) {
        var textSaver: TextSaverProtocol = UpperCasingDecorator(basicStruct: saver)
        textSaver.writeText(text)

        print("Uppercase Decorator: \(textSaver.readText())")
    }

    private func createLowerCaseDecorator(for saver: TextSaver, with text: String) {
        var textSaver: TextSaverProtocol = LowerCasingDecorator(basicStruct: saver)
        textSaver.writeText(text)

        print("Lowercase Decorator: \(textSaver.readText())")
    }
}
