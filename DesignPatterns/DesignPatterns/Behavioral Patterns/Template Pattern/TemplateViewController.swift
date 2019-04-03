//
//  TemplateViewController.swift
//  DesignPatterns
//
//  Created by gokhan alp on 3.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class TemplateViewController: TemplateBaseViewController {
    @IBOutlet weak var topTitleLabel: UILabel!
    @IBOutlet weak var step1Label: UILabel!
    @IBOutlet weak var step2Label: UILabel!
    @IBOutlet weak var step3Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.step1Label.text = "Step 1 Value is: \(super.step1Value)"
    }
    
    override func step2Setter() {
        self.step2Label.text = "Step 2 Value is: \(super.step2Value)"
    }
    
    // Preventive Solution Start
    override func step3Setter() {
        self.step3Label.text = "Step 3 Value is: \(super.step3Value)"
    }
    // Preventive Solution End
}
