//
//  MainMenu.swift
//  HomeTask1
//
//  Created by Macbook on 09/12/2025.
//
import Foundation

final class MainMenu {
    private var amountOfAttempts = 3
    private let userDefaults = UserDefaults.standard
    
    func displayMainMenu() {
        let gameMenu = GameMenu.allCases.map { $0.name } // $0 - обращение к каждому элементу вместо element in
            .joined(separator: "\n")
        print(gameMenu)
    }

    func startNewGame() {
        let randomInt = Int.random(in: 1...20)
//        print("\(randomInt)")
        while amountOfAttempts > 0 {
            print(Strings.guessTitle)
            guard let intValue = readLine(),
                  let attemp = Int(intValue)
            else {
                print(Strings.invalidInput)
                continue
            }
            
            if attemp == randomInt {
                exitGame(resultMessage: Strings.winTitle)
                userDefaults.set(attemp, forKey: "succeses")
                return
            } else {
                amountOfAttempts -= 1
                print(Strings.loseTitle(for: amountOfAttempts))
                if amountOfAttempts == 0 {
                    exitGame(resultMessage: Strings.gameOver(correctNumber: randomInt))
                    userDefaults.set(attemp, forKey: "failure")
                    return
                }
            }
        }
    }

     func showHistory() {
         let successNumbers = userDefaults.integer(forKey: "success")
         let failureNumbers = userDefaults.integer(forKey: "failure")
         print(Strings.showHistoryTitle(succeses: successNumbers, failure: failureNumbers))
    }

    func exitProgramm() {
        print(Strings.goodbye)
    }
    
    private func exitGame(resultMessage: String) {
        amountOfAttempts = 3
        print(resultMessage)
    }
    
}
