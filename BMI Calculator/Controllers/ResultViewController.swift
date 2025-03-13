//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Arjun Kondal on 13/03/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmivalue : String?
    var advice : String?
    var color : UIColor?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var result_Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        result_Label.text = bmivalue
        adviceLabel.text = advice
        view.backgroundColor = color
        
      
    }
    
    @IBAction func recalculateButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
