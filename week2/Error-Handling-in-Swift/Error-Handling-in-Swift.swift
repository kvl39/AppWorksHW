//
//  Error-Handling-in-Swift.swift
//  
//
//  Created by Liao Kevin on 2018/2/18.
//


import UIKit


///error handling

//question1
enum GuessNumberGameError: Error{
    case wrongNumber
}


class GuessNumerGame {
    var targetNumber = 10
    func guess(number:  Int)  throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print(  "Guess the right number:  \(  targetNumber) ")
    }
}

//question2
let guess = GuessNumerGame()
do{
    try guess.guess(number: 20)
} catch GuessNumberGameError.wrongNumber {
    print(GuessNumberGameError.wrongNumber)
}

























