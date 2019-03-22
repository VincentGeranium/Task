//
//  ViewController.swift
//  NewProject0322
//
//  Created by 김광준 on 22/03/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zeroLable: UILabel!
    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var downBotton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var countUp: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        zeroLable.text = String(0)
        zeroLable.textColor = .black
        
        
        upButton.addTarget(self, action: #selector(upBottonTap(_:)), for: .touchUpInside)
        
        resetButton.addTarget(self, action: #selector(reset(_:)), for: .touchUpInside)
        
    }

    @objc func upBottonTap(_ sender: UIButton) {
        
        zeroLable.textColor = .blue
        countUp += 1
        zeroLable.text = String(countUp)
        
    }
    
    @objc func reset(_ sender: UIButton) {
        zeroLable.textColor = .black
        countUp = 0
        zeroLable.text = String(countUp)
    }
    
    @IBAction func downButtonTap(_ sender: UIButton) {
        
        zeroLable.textColor = .red
        countUp -= 1
        zeroLable.text = String(countUp)
    }
}

