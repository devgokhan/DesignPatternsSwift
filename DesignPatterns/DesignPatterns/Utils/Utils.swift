//
//  Utils.swift
//  DesignPatterns
//
//  Created by gokhan alp on 3.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class Utils
{
    static func log(_ string: String)
    {
        #if DEBUG
        print("APPLOG-->> \(string)")
        #endif
    }
    
    static func getViewController<T:UIViewController> (_ type: T.Type, storyboard: Storyboards, customIdentifier: String? = nil) -> T
    {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let identifier = customIdentifier != nil ? customIdentifier! : String(describing: T.self)
        let vc = storyboard.instantiateViewController(withIdentifier: identifier) as! T
        return vc
    }
}
