
import UIKit

struct  CalculatorBrain {
   
    var bmi : BMI?
    
    func getBMIValue() -> String {
    
        let bmiTo1DecimalPlace = String (format: "%.1f" , bmi?.value ?? 0.0 )
            return bmiTo1DecimalPlace
       
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
        
    mutating func calculateBMI(height : Float , weight : Float) {
   let bmiValue = weight / (height * height )
    
    if bmiValue < 18.5 {
        bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
    }
    else if bmiValue < 24.9 {
        bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
    }
    else {
        bmi = BMI(value: bmiValue, advice: "Eat Less pies", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
    }
    }
}
