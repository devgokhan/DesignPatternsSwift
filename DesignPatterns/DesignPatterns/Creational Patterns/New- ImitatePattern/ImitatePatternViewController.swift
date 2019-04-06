//
//  ImitatePatternViewController.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 6.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class ImitatePatternViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Assume that web services return an object with name groundVehicle:
        let groundVehicle = GroundVehiclesModel(name: "Ford Focus", weight: 2230, wheelCount: 4)
        
        // Then you need to send kind, name and plate code
        if let orderCar = groundVehicle.imitateAs(type: OrderCarModel.self) {
            orderCar.plateCode = "ABCD1234"
            orderCar.type = "Car"
            
            // Print results
            self.label1.text = "Imported Info\nName: \(groundVehicle.name)\nWeight: \(groundVehicle.weight)\nWheel Count: \(groundVehicle.wheelCount)"
            self.label2.text = "Exported Info\nName: \(orderCar.name)\nPlate Code: \(orderCar.plateCode!)\nType: \(orderCar.type!)"
        }
    }
}
