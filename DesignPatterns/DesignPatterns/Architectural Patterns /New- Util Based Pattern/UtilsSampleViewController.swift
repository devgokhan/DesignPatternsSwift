//
//  UtilsSampleViewController.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 8.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class UtilsSampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AdvertisementsUtils.shared.showBannerAds()
    }
    
    @IBAction func goToSecondPage(_ sender: Any) {
        GeneralUtils.goToViewController(from: self, to: UtilsSampleSecondViewController())
    }
}
