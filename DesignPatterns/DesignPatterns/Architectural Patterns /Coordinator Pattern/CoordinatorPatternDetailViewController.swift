//
//  CoordinatorPatternDetailViewController.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 23.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class CoordinatorPatternDetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var coordinator: CoordinatorPatternCoordinator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = coordinator.selectedValue
    }
}
