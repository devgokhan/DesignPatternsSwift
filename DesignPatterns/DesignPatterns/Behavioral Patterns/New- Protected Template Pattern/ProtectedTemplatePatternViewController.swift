//
//  ProtectedTemplatePatternViewController.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 6.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class ProtectedTemplatePatternViewController: ProtectedTemplatePatternBaseViewController {
    
    @IBOutlet weak var label: UILabel!
    override func workSome(uuid: String) {
        //Assume that developer forgot to call super function of this function
        //Even he/she is forgot, function works correct
        self.label.text = "UUID is: \(uuid)"
    }
}
