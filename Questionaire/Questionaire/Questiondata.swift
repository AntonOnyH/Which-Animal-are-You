//
//  Questiondata.swift
//  Questionaire
//
//  Created by Anton Huisamen on 2018/08/16.
//  Copyright © 2018 antonsolo. All rights reserved.
//

import Foundation

struct Quesion {
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
}


