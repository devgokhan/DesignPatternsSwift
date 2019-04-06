//
//  SubPrototypeModel.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 6.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import Foundation

class SubPrototypeModel
{
    var year: Int!
    var type: String!
    var special: [String]!
    
    init(type: String, year: Int, special:[String]) {
        self.type = type
        self.year = year
        self.special = special
    }
    
    convenience init(subPrototypeModel: SubPrototypeModel)
    {
        self.init(type: subPrototypeModel.type, year: subPrototypeModel.year, special: subPrototypeModel.special)
    }
    
    
    func clone() -> SubPrototypeModel
    {
        return SubPrototypeModel(subPrototypeModel: self)
    }
}
