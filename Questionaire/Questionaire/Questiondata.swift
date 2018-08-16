//
//  Questiondata.swift
//  Questionaire
//
//  Created by Anton Huisamen on 2018/08/16.
//  Copyright © 2018 antonsolo. All rights reserved.
//

import Foundation
import UIKit

struct Question {
    var text: String
    var type: Responsetype
    var answers: [Answer]
}

enum Responsetype {
    case single, multiple, ranged
    
}

struct Answer {
    var text: String
    var type: Animal
}

enum Animal: Character {
    case dog = "🐶",cat = "🐱",rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with your loved ones and enjoy activities with your friends."
        case .cat:
            return "Mischieves, yet mild tempered. You enjoy doing things on your own terms"
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy"
        case .turtle:
            return "You are wise beyond your years, you focus on details. Slow and steady wins the race"
        }
    }
}


