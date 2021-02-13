//
//  ViewController.swift
//  Quiz
//
//  Created by Kyle Fahey on 2/11/21.
//  Copyright © 2021 The Fahey Projects. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
    "How old am I?",
    "Who is the goat of Supercross?",
    "Best Green Bay QB?"
    ]
    let answers: [String] = [
    "23",
    "Ricky Carmicheal",
    "Aaron Rodgers"
    ]
    
    var currentQuestionIndex: Int = 0
    
    // Shows Next Question
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    // Shows Answer
    @IBAction func showAnswer(_sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    // Hides Answer
    @IBAction func hideAnswer(_ sender: UIButton){
        let _: String = questions[currentQuestionIndex]
        answerLabel.text = "???"
        
    }
    
    // Hides Question
    @IBAction func hideQuestion(_ sender: UIButton){
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        questionLabel.text = "???"
    }
    
    // Show Question
    @IBAction func showQuestion(_ sender: UIButton){
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
    }

}

