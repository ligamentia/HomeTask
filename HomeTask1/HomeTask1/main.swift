//
//  main.swift
//  HomeTask1
//
//  Created by Macbook on 08/12/2025.
//

import Foundation

let mainMenu = MainMenu()

func runGame() {
    mainMenu.displayMainMenu()
    while let choice = readLine() {
        guard let intValue = Int(choice),
              let choice = GameMenu(rawValue: intValue)
        else {
            print("Invalid choice. Please try again.")
            continue
        }

        switch choice {
        case .startNewGame:
            mainMenu.startNewGame()
            return
        case .showHistory:
            mainMenu.showHistory()
        case .exit:
            mainMenu.exitGame()
            return
        }
    }
}

runGame()
