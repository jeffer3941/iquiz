//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by j.da.silva.monteiro on 2/7/24.
//

import UIKit

class QuestionViewController: UIViewController {

    var point = 0
    var numberOfQuesions = 0
    
    @IBOutlet weak var titleQuestion: UILabel!
    @IBOutlet var alternatives: [UIButton]!
    @IBAction func pressAlternatives(_ sender: UIButton) {
        
        let answerUser = questions[numberOfQuesions].rightAnswer == sender.tag
        if(answerUser) {
            point += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if (numberOfQuesions < questions.count - 1) {
            numberOfQuesions += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(questionConfig), userInfo: nil, repeats: false)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenConfig()
        questionConfig()
    }
    
    func screenConfig(){
        navigationItem.hidesBackButton = true
        for alternative in alternatives {
            alternative.layer.cornerRadius = 12.0
        }
    }
    
    @objc func questionConfig() {
        titleQuestion.numberOfLines = 0
        titleQuestion.textAlignment = .center
        titleQuestion.text = questions[numberOfQuesions].title
        
        for alternative in alternatives {
            let buttonTitle = questions[numberOfQuesions].answer[alternative.tag]
            alternative.setTitle(buttonTitle,for:.normal)
            alternative.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
            
        }
    }
}
