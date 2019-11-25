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
    
    let quiz = QuizController()
    var questionNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateQuestion()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz.questions[questionNumber].answer
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < quiz.questions.count {
            questionNumber += 1
            progressBar.progress = Float(questionNumber) / Float(quiz.questions.count)
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
   
    
    @ objc func updateQuestion() {
        
        questionLabel.text = quiz.questions[questionNumber].question
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}  

