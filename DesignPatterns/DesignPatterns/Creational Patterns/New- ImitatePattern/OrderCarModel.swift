//
//  OrderCarModel.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 6.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import Foundation


class OrderCarModel
{
    let name: String
    var plateCode: String! = ""
    var type: String! = ""
    
    init(withGroundVehiclesModel: GroundVehiclesModel) {
        self.name = withGroundVehiclesModel.name
    }
}
