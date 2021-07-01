//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        //QuizBrain.swift에서 external parameter name을 _로 입력한 경우
        //quizBrain.checkAnswer(userAnswer) 아래와 동일

        let userGotItRight = quizBrain.checkAnswer(answer: userAnswer)
        //QuizBrain.swift에서 external parameter name을 answer로 입력한 경우
        
        
        if userGotItRight {
            // UIcolor == 미리 build되어 있는 color
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        //questionNumber가 0부터 시작하기 때문에, 첫 Q일 때도 progressBar가 진행되도록 하기 위해 questionNumber + 1 사용함
        scoreLabel.text = "Score : \(quizBrain.getScore())"
    }
    
    
}

