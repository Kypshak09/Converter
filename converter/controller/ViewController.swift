//
//  ViewController.swift
//  converter
//
//  Created by Amir Zhunussov on 08.07.2022.
//

import UIKit

class ViewController: UIViewController {

    var converter = converterTenge()
    
    @IBOutlet weak var dollarSlider: UISlider!
    @IBOutlet weak var euroSlider: UISlider!
    @IBOutlet weak var rubleSlider: UISlider!
    @IBOutlet weak var dollarLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var rubleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  
    @IBAction func dollarAction(_ sender: UISlider) {
        let dollar = String(format: "%.0f", sender.value)
        dollarLabel.text = "\(dollar)$"
    }
    
    @IBAction func euroAction(_ sender: UISlider) {
        let euro = String(format: "%.0f", sender.value)
        euroLabel.text = "\(euro)€"
    }
    
    
    @IBAction func rubleAction(_ sender: UISlider) {
        let ruble = String(format: "%.0f", sender.value)
        rubleLabel.text = "\(ruble)₽"
        
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        let dollar = dollarSlider.value
        let euro = euroSlider.value
        let ruble = rubleSlider.value
        
        converter.calculateDollar(dollar: dollar)
        converter.calculateEuro(euro: euro)
        converter.calculateRuble(ruble: ruble)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.dollar = converter.getDollar()
            destinationVC.euro = converter.getEuro()
            destinationVC.ruble = converter.getRuble()
        }
    }
    
    

}
