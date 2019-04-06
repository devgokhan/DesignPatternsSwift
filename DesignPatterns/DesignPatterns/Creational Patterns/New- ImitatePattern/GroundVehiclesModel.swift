//
//  GroundVehiclesModel.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 6.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import Foundation

class GroundVehiclesModel
{
    let name: String
    let weight: Int
    let wheelCount: Int
    
    init(name: String, weight: Int, wheelCount: Int) {
        self.name = name
        self.weight = weight
        self.wheelCount = wheelCount
    }
    
    func imitateAs<T>(type: T.Type) -> T?
    {
        if(T.self == OrderCarModel.self) {
            return OrderCarModel(withGroundVehiclesModel: self) as? T
        } else {
            return nil
        }
    }
}
