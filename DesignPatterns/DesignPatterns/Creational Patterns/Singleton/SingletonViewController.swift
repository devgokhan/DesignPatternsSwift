//
//  SingletonViewController.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 6.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class SingletonViewController: UIViewController {

    let singleton = SingletonClass.shared
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // This cant be called!
        //let singletonTry = SingletonClass()
        
        self.label.text = "Call count: \(singleton.getSharedCount())\nCreate Date:\(singleton.getCreateDate() != nil ? "\(singleton.getCreateDate()!)" : "")"
    }

}
