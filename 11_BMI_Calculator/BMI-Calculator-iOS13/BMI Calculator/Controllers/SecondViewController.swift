//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by 강주원 on 2021/07/23.
//  Copyright © 2021 Angela Yu. All rights reserved.
//
import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .red
        // UIColor.red 를 입력하는게 맞지만,
        // xcode에서는 backgroundColor에 UIColor 값이 입력될 것을 알기 때문에
        // 앞에 오는 UIColor를 생략하고 .red만 입력해도 된다.
        
        let label = UILabel()
        label.text = bmiValue
        //.frame을 통해 label의 위치와 사이즈를 지정한다.
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        view.addSubview(label) //view:parent, label:child
        
    }
}

