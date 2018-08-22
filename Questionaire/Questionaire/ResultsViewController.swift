//
//  ResultsViewController.swift
//  Questionaire
//
//  Created by Anton Huisamen on 2018/08/12.
//  Copyright © 2018 antonsolo. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    @IBOutlet weak var resultDefinitionLabel: UITextView!
    
    
    
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResults()
        navigationItem.hidesBackButton = true
    }

    func calculatePersonalityResults(){
        var frequencyOfAnswers: [Animal: Int] = [:]
        let responseType = responses.map { $0.type }
        for response in responseType {
            frequencyOfAnswers [response] = (frequencyOfAnswers [response] ?? 0)+1
            
            let frequencyAnswersSorted = frequencyOfAnswers.sorted(by:
            {(pair1, pair2) -> Bool in
                return pair1.value > pair2.value
            })
            
            let mostCommonAnswer = frequencyAnswersSorted.first!.key
            
            resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
            resultDefinitionLabel.text = mostCommonAnswer.definition
            
        }
    }

}
