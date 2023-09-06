# Structural Design Patterns

This repository contains examples in Swift of some common structural design patterns.  These are:
- Adapter
- Bridge
- Composite
- Decorator
- Facade
- Flyweight
- Proxy

## How to use

Inside the repository these are separated into respective directories all within the Structural directory.

Within each folder is an xcode project for a command line app, which you can use to view and run the code.  Each will run and perform some basic operations to demonstrate the pattern.

There are some similarities between all the projects to help you get started.

There is a folder called App, which contains `main.swift` being the entry point into the app and another swift file called `PatternApp.swift` where `Pattern` is the name of the design pattern project that you're in, eg. `CompositeApp.swift` for the Composite pattern.

`main.swift` will instatiate a `PatternApp()` and call its `run()` method

`PatterApp.swift` contains the `run()` method to begin running the example and a printDecription() method which is the first thing it does and prints a description of the design pattern to the console.

These examples are meant to be read rather than provide some useful function but the code is there and working to help show it in operation.
