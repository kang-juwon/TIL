//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightValue.text =  String(format: "%.2f", sender.value) + "m"
// 아래와 동일
// let height = String(format: "%.2f", sender.value)
// heightValue.text = "\(height)m"
        
        
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        weightValue.text = String(format: "%.0f", sender.value) + "Kg"
// 아래와 동일
// let weight = String(format: "%.0f", sender.value)
// weightValue.text = "\(weight)Kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        
        // let bmi = weight / (height * height)
        let bmi = weight / pow(height, 2)
        print(bmi)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

