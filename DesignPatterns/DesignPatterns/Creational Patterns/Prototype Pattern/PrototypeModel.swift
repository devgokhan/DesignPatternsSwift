//
//  PrototypeModel.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 6.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import Foundation

class PrototypeModel
{
    // Assume that this is data model and values are protecting with let. You want to send same data with little changes than you can do this with example solution.
    // This example you will see that we are giving oppurtunity to change the name field with cloning
    let name: String!
    
    // TRADITIONAL PART START
    var speed: Int!
    var brand: String!
    var specs: [String]!
    var subval: SubPrototypeModel!
    // TRADITIONAL PART END
    init(name: String, speed: Int, brand: String, specs:[String], subval: SubPrototypeModel) {
        self.name = name
        self.speed = speed
        self.brand = brand
        self.specs = specs
        self.subval = subval
    }
    
    convenience init(prototypeModel: PrototypeModel, newName: String? = nil)
    {
        let clonename: String! = newName != nil ? newName! : prototypeModel.name
        self.init(name: clonename, speed: prototypeModel.speed, brand: prototypeModel.brand, specs: prototypeModel.specs, subval: prototypeModel.subval.clone())
    }
    
    func clone(newName: String? = nil) -> PrototypeModel
    {
        return PrototypeModel(prototypeModel: self, newName: newName)
    }
}
