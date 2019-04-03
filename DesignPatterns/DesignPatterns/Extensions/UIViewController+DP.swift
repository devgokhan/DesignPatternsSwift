//
//  ViewController.swift
//  DesignPatterns
//
//  Created by gokhan alp on 3.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

extension UIViewController {
    func pushViewController(_ vc: ViewController)
    {
        if(self.navigationController != nil) {
            self.navigationController!.pushViewController(vc, animated: true)
        } else {
            Utils.log("Unable to push view controller because this view controller has no navigation controller!")
        }
    }
}
