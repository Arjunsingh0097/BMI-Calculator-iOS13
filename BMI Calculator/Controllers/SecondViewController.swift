////
////  SecondViewController.swift
////  BMI Calculator
////
////  Created by Arjun Kondal on 13/03/25.
////  Copyright © 2025 Angela Yu. All rights reserved.
////
////
////import Foundation
////import UIKit
////class SecondViewController :UIViewController{
////    
////   var bmivalue = "0.0"
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        print(bmivalue)
////        
////        view.backgroundColor = UIColor.red
////        let label = UILabel()
////        label.text =  bmivalue
////       
////        label.frame = CGRect(x: 2, y: 2, width: 100, height: 50)
////        view.addSubview(label)
////    }
////    
////}
//import UIKit
//
//class SecondViewController: UIViewController {
//    
//    var bmivalue = "0.0"
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        view.backgroundColor = UIColor.red
//        
//        let label = UILabel()
//        label.text = bmivalue
//        label.textAlignment = .center
//        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
//        label.textColor = .white
//        
//        // Set frame dynamically to center it
//        label.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
//        label.center = view.center
//
//        view.addSubview(label)
//    }
//}
