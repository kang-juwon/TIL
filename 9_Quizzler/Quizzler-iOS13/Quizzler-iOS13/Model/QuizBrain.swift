//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by 강주원 on 2021/06/28.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        
    ]
    
    var questionNumber = 0
    var quizScore = 0
    
    //아랫줄에서 answer은 external parameter, 함수 외부에서 사용할 수 있음
    //userAnswer는 internal parameter, 이 함수 안에서 사용할 수 있음
    //만약 external parameter name을 사용하지 않을거라면 '_'으로 대신하면 된다.
    //func checkAnswer(_ userAnswer: String)와 동일
    mutating func checkAnswer(answer userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            //user got it right
            quizScore += 1
            return true
        } else {
            //user got it wrong
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            quizScore = 0
            questionNumber = 0
        }
    }
    
    func getScore() -> Int {
        return quizScore
    }
    
}