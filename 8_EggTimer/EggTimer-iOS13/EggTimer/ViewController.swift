//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let eggTimes = [
        "Soft" : 300,
        "Medium" : 420,
        "Hard" : 720
    ]
    
    var counter : Int?
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        print(eggTimes[hardness]!)
        
        counter = eggTimes[sender.currentTitle!]
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)

        }
    
    @objc func updateCounter() {
        if counter! > 0 {
            print("\(String(describing: counter)) seconds")
            counter! -= 1
        }
    }


    }
