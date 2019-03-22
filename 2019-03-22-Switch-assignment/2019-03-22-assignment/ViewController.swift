//
//  ViewController.swift
//  2019-03-22-assignment
//
//  Created by 김광준 on 22/03/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    
    let statusOn: String = "On"
    let statusOff: String = "Off"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        status.text = " "
        
        switchButton.addTarget(self, action: #selector(switchOnOff(_:)), for: .valueChanged)
        
    }
    
    @objc func switchOnOff(_ sender: UISwitch) {
        if sender.isOn {
            status.text = statusOn
        } else {
            status.text = statusOff
        }
    }
}

