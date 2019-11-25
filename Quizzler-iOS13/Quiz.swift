//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Tobi Kuyoro on 24/11/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Quiz {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        question = q
        answer = a
    }
}

