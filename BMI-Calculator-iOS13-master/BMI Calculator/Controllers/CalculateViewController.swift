

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
     let weight =  String(format:"%.0f",sender.value)
            weightLabel.text = "\(weight)kg"
        
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
      let height = String(format:"%.2f",sender.value)
             heightLabel.text = "\(height)m"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
       
        calculatorBrain.calculateBMI(height : height , weight : weight)
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destintaionVC = segue.destination as! ResultViewController
            destintaionVC.bmiValue = calculatorBrain.getBMIValue()
            destintaionVC.advice = calculatorBrain.getAdvice()
            destintaionVC.color = calculatorBrain.getColor()
            
        }
        
    }
}

