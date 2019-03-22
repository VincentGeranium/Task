//
//  ViewController.swift
//  2019-03-22-SegmentedControl-assignment
//
//  Created by 김광준 on 22/03/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var exchangeLabel: UILabel!
    @IBOutlet weak var select: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        select.selectedSegmentIndex = 0
        exchangeLabel.text = " "
        
        select.addTarget(self, action: #selector(segmentMethod(_:)), for: .valueChanged)
    
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func segmentMethod(_ sender: UISegmentedControl) {
        switch select.selectedSegmentIndex {
        case 0:
            exchangeLabel.text = "first"
        case 1:
            exchangeLabel.text = "second"
        default:
            ()
        }
    
        }
        
        
    }




