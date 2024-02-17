//
//  ViewController.swift
//  iQuiz
//
//  Created by j.da.silva.monteiro on 2/7/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startQuizButton: UIButton!
    
    @IBAction func pressButton(_ sender: Any) {
        print("Press button")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
        
    }

    func configLayout( ) {
        startQuizButton.layer.cornerRadius = 12.0
    }
}

