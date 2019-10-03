//
//  Converter.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 29.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import Foundation

struct Converter {
    
    //MARK: - Example Class
    static func convert<T:ConverterExampleClassB>(from: ConverterExampleClassA, to: T.Type, tag: ConverterExampleTag) -> T {
        let obj = ConverterExampleClassB()
        obj.stringval = "\(String(describing: from.dateval))"
        return obj as! T
    }
    
}
