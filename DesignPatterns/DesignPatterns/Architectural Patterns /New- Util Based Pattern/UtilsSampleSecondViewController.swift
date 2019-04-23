//
//  UtilsSampleSecondViewController.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 8.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class UtilsSampleSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AdvertisementsUtils.shared.showBannerAds()
        AdvertisementsUtils.shared.showInterstitialAds()
    }
}
