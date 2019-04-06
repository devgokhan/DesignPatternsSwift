//
//  ProtectedTemplatePatternBaseViewController.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 6.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class ProtectedTemplatePatternBaseViewController: UIViewController {

    private var alluuid: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.protectedWorkSome(uuid: nil)
    }
    
    private func protectedWorkSome(uuid: String?)
    {
        if(uuid == nil)
        {
             self.alluuid = NSUUID().uuidString
        }
        
        if(self.alluuid != nil)
        {
            self.workSome(uuid: self.alluuid!)
        }
    }
    
    func workSome(uuid: String)
    {
        print("Extra log - not neccassary to call this!")
    }
    

}
