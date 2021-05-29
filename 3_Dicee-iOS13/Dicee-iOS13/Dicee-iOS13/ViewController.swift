//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // ctrl+drag ==> IBOutlet generated.
    // IBOutlet == reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //WHO.WHAT = VALUE
        //VALUE:imageliteral == directly select an image
        diceImageView1.image = #imageLiteral(resourceName: "DiceTwo")
        diceImageView1.alpha = 0.5
        diceImageView2.image = #imageLiteral(resourceName: "DiceThree")
        // Do any additional setup after loading the view.
    }

    @IBAction func diceRollButtonPressed(_ sender: UIButton) {
        print("Button got pressed.")
        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
    }
    
}

