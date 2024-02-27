//
//  PerformanceViewController.swift
//  iQuiz
//
//  Created by j.da.silva.monteiro on 2/24/24.
//

import UIKit

class PerformanceViewController: UIViewController {
    
    var percentagenPerformance: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var percentageLabel: UILabel!
    
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenConfig()
        performanceConfig()
    }
    
    func screenConfig() {
        navigationItem.hidesBackButton = true
        restartButton.layer.cornerRadius = 12.0
            
    }
    
    func performanceConfig() {
        guard let point = percentagenPerformance else {return}
        resultLabel.text = "Você acertou \(point) de \(questions.count) questões."
        let percentage = (point * 100) / questions.count
        percentageLabel.text = "Percentual final: \(percentage)%"
    }

}
