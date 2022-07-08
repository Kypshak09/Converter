//
//  ResultViewController.swift
//  converter
//
//  Created by Amir Zhunussov on 08.07.2022.
//

import UIKit

class ResultViewController: UIViewController {

    var dollar: String?
    var euro: String?
    var ruble:String?
    
    @IBOutlet weak var dollarTenge: UILabel!
    @IBOutlet weak var euroTenge: UILabel!
    @IBOutlet weak var rubleTenge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dollarTenge.text = dollar
        euroTenge.text = euro
        rubleTenge.text = ruble
        
    }
    
    
    @IBAction func returnToConvert(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
