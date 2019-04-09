//
//  GeneralUtils.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 8.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import Foundation
import UIKit

class GeneralUtils
{
    static func log(_ string: String)
    {
        #if DEBUG
        print("GeneralUtilsLog-->> \(string)")
        #endif
    }
    
    static func getViewController<T:UIViewController> (_ type: T.Type, storyboard: Storyboards, customIdentifier: String? = nil) -> T
    {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let identifier = customIdentifier != nil ? customIdentifier! : String(describing: T.self)
        let vc = storyboard.instantiateViewController(withIdentifier: identifier) as! T
        return vc
    }
    
    static func goToViewController(from: UIViewController, to: UIViewController) {
        if(from.navigationController != nil) {
            from.navigationController?.pushViewController(to, animated: true)
        } else {
            from.present(to, animated: true, completion: nil)
        }
    }
    
    static func connectOnViewController(viewController: UIViewController) -> UINavigationController
    {
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
}
