//
//  MessageAbstraction.swift
//  Bridge
//
//  Created by Mike Pollard on 06/07/2023.
//

import Foundation

enum Messages {
    case error(Colour)
    case warning(Colour)
    case success(Colour)
    case info(Colour)
}

extension Messages {
    func display() {
        let divider = " : "
        print(colour + divider + string)
    }

    private var colour: String {
        switch self {
        case let .error(colour), let .warning(colour), let .success(colour), let .info(colour):
            return colour.provide
        }
    }

    private var string: String {
        switch self {
        case .error: return "Error"
        case .warning: return "Warning"
        case .success: return "Success"
        case .info: return "Info"
        }
    }
}
