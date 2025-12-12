//
//  MainMenu.swift
//  HomeTask1
//
//  Created by Macbook on 09/12/2025.
//
import Foundation

final class MainMenu {
    var amountOfAttempts = 3
    
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
                UserDefaults.standard.set(attemp, forKey: "success")
                return
            }
            else {
                amountOfAttempts -= 1
                print(Strings.loseTitle(for: amountOfAttempts))
                if amountOfAttempts == 0 {
                    exitGame(resultMessage: Strings.gameOver(correctNumber: randomInt))
                    return
                }
            }
        }
    }

     func showHistory() {
         let number = UserDefaults.standard.integer(forKey: "success")
         print(Strings.showHistoryTitle(for: number))
    }

    func exitGame() {
        print(Strings.goodbye)
    }
    
    private func exitGame(resultMessage: String) {
        amountOfAttempts = 3
        print(resultMessage)
    }
    
}
