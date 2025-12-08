//
//  main.swift
//  HomeTask1
//
//  Created by Macbook on 08/12/2025.
//

import Foundation

func displayMainMenu() {
    print("""
|1. Start new game |  
|2. Show history |  
|3. Exit |
""")
}

func startNewGame() {
    print("Do you want start new game?")
}

 func showHistory() {
     print("You score history:")
}

func exitGame() {
    print("Goodbye!")
}

func runGame() {
   displayMainMenu()
    while let choice = readLine() {
        switch choice {
        case "1":
            startNewGame()
        case "2":
            showHistory()
        case "3":
            exitGame()
            return
        default:
            print("Invalid choice. Please try again.")
        }
    }
}

runGame()
