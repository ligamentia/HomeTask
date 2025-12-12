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
    static let winTitle = "Congratulations"
    static let guessTitle = "Guess the number from 1 to 20: "
    static let showHistory = "You score history: "
    static func showHistoryTitle(for succeses: Int) -> String {
        "\(succeses)"
    }
    static func loseTitle(for amountOfAttempts: Int) -> String {
        "You are wrong. You have \(amountOfAttempts) attempts left. Try again."
    }
    static func gameOver(correctNumber: Int) -> String {
        "Game over! The correct number was \(correctNumber)"
    }
}
