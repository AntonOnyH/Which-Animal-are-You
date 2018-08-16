//
//  QuestionViewController.swift
//  Questionaire
//
//  Created by Anton Huisamen on 2018/08/12.
//  Copyright © 2018 antonsolo. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var questions: [Question] = [
        Question (text: "Which of these do you enjoy most?",
                  type: Responsetype.single,
                  answers: [
                           Answer(text: "steak", type: case.dog),
                           Answer(text: "Fish", type: case.cat),
                           Answer(text: "Carrots", type: case.rabbit),
                           Answer(text: "Corn", type: case.turtle)
    ]),
        Question(text: "Which activities do you enjoy",
                 type: Responsetype.multiple,
                 answers: [
                          Answer(text: "swimming", type: case.turtle),
                          Answer(text: "Sleeping", type: case.cat),
                          Answer(text: "Cuddling", type: case.rabbit),
                          Answer(text: "Eating", type: case.dog)
    ]),
        Question(text: "How much do you enjoy car rides",
                 type: Responsetype.ranged,
                 answers: [
                          Answer(text: "I dislike them", type: case.cat),
                          Answer(text: "I get a little nervous", type: case.rabbit),
                          Answer(text: "I barely notice them", type: case.turtle),
                          Answer(text: "I love them", type: case.dog)
    ])
    ]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
}
