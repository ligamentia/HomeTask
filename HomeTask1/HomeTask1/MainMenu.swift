//
//  MainMenu.swift
//  HomeTask1
//
//  Created by Macbook on 09/12/2025.
//


class MainMenu {
    
    func displayMainMenu() {
        let gameMenu = GameMenu.allCases.map { $0.name } // $0 - обращение к каждому элементу вместо element in
            .joined(separator: "\n")
        print(gameMenu)
    }

    func startNewGame() {
        print("Do you want start new game?")
    }

     func showHistory() {
         print("You score history:")
    }

    func exitGame() {
        print(Strings.goodbye)
    }
    
}