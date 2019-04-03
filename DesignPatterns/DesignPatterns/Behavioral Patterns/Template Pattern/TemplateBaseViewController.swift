//
//  TemplateBaseViewController.swift
//  DesignPatterns
//
//  Created by gokhan alp on 3.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class TemplateBaseViewController: UIViewController {

    var step1Value: String = "NOT SET"
    var step2Value: String = "NOT SET"
    var step3Value: String = "NOT SET"
    
    var expectedValue = "Template Pattern Sample Value"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.step1Value = self.expectedValue
        self.step2Setter()
        self.secureStep3Setter()
    }
    
    func step2Setter()
    {
        self.step2Value = self.expectedValue
    }
    
    // Preventive Solution Start
    private func secureStep3Setter() {
        self.step3Value = self.expectedValue
        self.step3Setter()
    }
    
    func step3Setter()
    {
        
    }
    // Preventive Solution End
}
