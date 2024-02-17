//
//  Questions.swift
//  iQuiz
//
//  Created by j.da.silva.monteiro on 2/8/24.
//

import Foundation

struct Question {
    var title: String
    var answer:[String]
    var rightAnswer: Int
}


let questions: [Question] = [
    Question(
        title:"Qual feitiço para desarmar o seu oponente, em Harry Potter?",
        answer: ["Expecto Patronum","Avada Kedavra","Expelliarmus"],
        rightAnswer: 2
    ),
    Question(
        title:"Em que ano Vingadores Ultimato foi lançado?",
        answer: ["2019","2018","2017"],
        rightAnswer: 0
    )
]
