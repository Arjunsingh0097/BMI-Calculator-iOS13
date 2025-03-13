

import Foundation
import UIKit
struct CalculatorBrain{
    var bmi: BMI?
  
   
    
    
    
    
    
    func getbmi() ->String {
        return String(format:"%0.2f",bmi?.value ?? 0.0)
    }
   mutating func claculatebmi( height: Float , weight : Float )  {
         var h = height
         var w = weight
       var bmiv = Float(w)/Float(h*h)
       if  bmiv < 18.5{
           bmi = BMI(value: bmiv, category: "eat more pies", color: UIColor.blue)
          
           
           
           
       }
       else if bmiv > 18.5   &&  bmiv < 24.9{
           bmi = BMI(value: bmiv, category: "fit as fiddles", color: UIColor.green)
           
           
           
           
       }else{
           bmi = BMI(value: bmiv, category: "eat less pies", color: UIColor.red)
           
        
           
       }
       
       
    
    
       
    }
    func getadvice()-> String{
       return ( bmi?.category  ?? " NO ADVICE")
    }
    func getcolor()-> UIColor{
        return ( bmi?.color ?? UIColor.clear)
    }
}
