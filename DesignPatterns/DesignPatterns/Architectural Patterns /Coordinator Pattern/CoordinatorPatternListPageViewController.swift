//
//  CoordinatorPatternListPageViewController.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 23.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class CoordinatorPatternListPageViewController: UIViewController {
    
    var coordinator: CoordinatorPatternCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func value1Tapped(_ sender: Any) {
        self.coordinator.goDetail(value: "Value 1")
    }
    @IBAction func value2Tapped(_ sender: Any) {
          self.coordinator.goDetail(value: "Value 2")
    }
}

