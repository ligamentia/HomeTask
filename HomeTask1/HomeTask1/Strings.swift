//
//  Strings.swift
//  HomeTask1
//
//  Created by Macbook on 09/12/2025.
//

import Foundation

struct Strings {
    static let goodbye = "Goodbye!"
    static let invalidInput = "Invalid input"
    static let winTitle = "You win!"
    static func loseTitle(for amountOfAttempts: Int) -> String {
        "You are wrong. You have \(amountOfAttempts) attempts left"
    }
    static func gameOver(correctNumber: Int) -> String {
        "Game over! The correct number was \(correctNumber)"
    }
}
