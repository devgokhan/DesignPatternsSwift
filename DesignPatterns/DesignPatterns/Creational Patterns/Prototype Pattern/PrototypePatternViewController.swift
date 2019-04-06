//
//  PrototypePatternViewController.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 6.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class PrototypePatternViewController: UIViewController {

    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let orgmodel = PrototypeModel(name: "Focus", speed: 220, brand: "Ford", specs: ["Sunroof", "Radio"],
                                      subval: SubPrototypeModel(type: "Titanium", year: 2010, special: ["Accessories", "Special Colors"]))
        let clonedModel = orgmodel.clone(newName: "Mustang")
        clonedModel.speed = 290
        clonedModel.subval.type = "Ultra"
        clonedModel.subval.special.append("Turbo")
        
        result1.text = "Original Model \(getPrintString(model: orgmodel))"
        result2.text = "Cloned Model \(getPrintString(model: clonedModel))"
    }
    
    func getPrintString(model: PrototypeModel) -> String
    {
        return  "\nName:\(model.name!)\nSpeed: \(model.speed!)\nSpecs:\(model.specs!)\nSub-Type: \(model.subval.type!)\nSub-Year: \(model.subval.year!)\nSub-Special: \(model.subval.special!)"
    }

}
