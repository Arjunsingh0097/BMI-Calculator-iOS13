//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var setheight:Float = 0.0
    var setweight:Float = 0.0
    var  bmival : String = "0.0"
    // Creating the istance of the structrue of the calculatorbrain
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weightSlideBar: UISlider!
    @IBOutlet weak var heightSlideBar: UISlider!
    @IBOutlet weak var bmiResultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
     
    }

    @IBAction func calculateBmi(_ sender: Any) {
     
         calculatorBrain.claculatebmi(height: setheight, weight: setweight)
      
   
        self.performSegue(withIdentifier:"gotoresult", sender: self)
       
        
        
     
      
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "gotoresult"{
            let destinationvc = segue.destination as! ResultViewController
            destinationvc.bmivalue = calculatorBrain.getbmi()
            destinationvc.advice = calculatorBrain.getadvice()
            destinationvc.color = calculatorBrain.getcolor()
            
        }
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func heightSliderSlides(_ sender: Any) {
        height.text = ("\(String(format: "%.1f", heightSlideBar.value))m")
        setheight = Float( heightSlideBar.value)
        
    }
    
    @IBAction func weightSliderSlides(_ sender: Any) {
        weight.text = ( "\(String(format:"%0.1f",weightSlideBar.value ))kg")
        setweight = Float( weightSlideBar.value)
        
    }

   
    
    
}

