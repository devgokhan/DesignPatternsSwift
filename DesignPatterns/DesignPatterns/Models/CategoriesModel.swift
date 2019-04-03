//
//  CategoriesModel.swift
//  DesignPatterns
//
//  Created by gokhan alp on 3.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import Foundation

typealias CategoryActionBlock = () -> Void

class CategoriesModel
{
    let categoryTitle: String
    let actionBlock: CategoryActionBlock?
    let subCategories: [CategoriesModel]?
    
    init(title: String, action: CategoryActionBlock? = nil, subCategories: [CategoriesModel]? = nil ) {
        self.categoryTitle = title
        self.actionBlock = action
        self.subCategories = subCategories
    }
}
