//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Aryan Vasudeva on 14/07/2024.
//

import Foundation
import UIKit

struct calculatorBrain{
    var bmi:BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiRes = Float(weight)/Float(pow(height, 2))
       
        
        if bmiRes < 18.5{
            bmi = BMI(value: bmiRes, advice: "Under Weight", color: UIColor.blue)
            
        }else if bmiRes>=18.5 && bmiRes<=24.9{
            bmi = BMI(value: bmiRes, advice: "Normal", color: UIColor.green)
            
        }else{
            bmi = BMI(value: bmiRes, advice: "Over Weight", color: UIColor.red)
           
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        print(bmiValue)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi!.advice
    }
    func getColor() -> UIColor {
        return bmi!.color
    }
}
