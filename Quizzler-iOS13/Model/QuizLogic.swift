//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizLogic {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "The Great Wall of China is visible from space.", a: "False"),
        Question(q: "Cows sleep standing up.", a: "False"),
        Question(q: "The shortest war in history lasted less than an hour.", a: "True"),
        Question(q: "In Japan, it is impolite to tip at restaurants.", a: "True"),
        Question(q: "The world's smallest mammal is the bumblebee bat.", a: "True"),
        Question(q: "The longest English word is antidisestablishmentarianism.", a: "True"),
        Question(q: "The Mona Lisa was stolen from the Louvre in 1911.", a: "True"),
        Question(q: "The currency of Switzerland is the Swiss franc.", a: "True"),
        Question(q: "The tallest building in the world is the Burj Khalifa.", a: "True"),
        Question(q: "The Declaration of Independence was signed in 1776.", a: "True"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system.", a: "True")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

