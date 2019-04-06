//
//  SingletonClass.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 6.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import Foundation

class SingletonClass {
    
    static let shared = SingletonClass()
    private var count = 0
    private var createDate:Date?
    
    private init() {
        self.count = 0
        self.createDate = Date()
    }
    
    func getSharedCount() -> Int
    {
        self.count = self.count + 1
        return self.count
    }
    
    func getCreateDate() -> Date?
    {
        return self.createDate
    }
}
