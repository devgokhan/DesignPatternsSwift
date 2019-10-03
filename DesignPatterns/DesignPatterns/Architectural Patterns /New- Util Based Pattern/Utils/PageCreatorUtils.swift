//
//  PageCreatorUtils.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 15.06.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

enum PageCreatorEnum {
    case SamplePageA
    case SamplePageB
    case SamplePageC
    case SamplePageD
    case SamplePageE
}

class PageCreatorUtils {
    static func createPage(page: PageCreatorEnum) -> UIViewController {
        
        switch page {
        case .SamplePageA:
            let vc = GeneralUtils.getViewController(SamplePageAViewController.self, storyboard: .main)
            GeneralUtils.sendPageOpenStatistics(screenName: "Utils Based Sample A Page", date: Date())
            AdvertisementsUtils.shared.showBannerAds()
            AdvertisementsUtils.shared.showInterstitialAds()
            let presentedVC = self.createPage(page: .SamplePageB)
            GeneralUtils.goToViewController(from: vc, to: presentedVC, present: true)
            return vc
        case .SamplePageB:
            let vc = GeneralUtils.getViewController(SamplePageBViewController.self, storyboard: .main)
            GeneralUtils.sendPageOpenStatistics(screenName: "Utils Based Sample A's Popup B Page", date: Date())
            return vc
        case .SamplePageC:
            let vc = GeneralUtils.getViewController(SamplePageCViewController.self, storyboard: .main)
            AdvertisementsUtils.shared.showBannerAds()
            AdvertisementsUtils.shared.showInterstitialAds()
            return vc
        case .SamplePageD:
            let vc = GeneralUtils.getViewController(SamplePageDViewController.self, storyboard: .main)
            GeneralUtils.sendPageOpenStatistics(screenName: "Utils Based Sample D Page", date: Date())
            AdvertisementsUtils.shared.showBannerAds()
            return vc
        case .SamplePageE:
            let vc = GeneralUtils.getViewController(SamplePageEViewController.self, storyboard: .main)
            GeneralUtils.sendPageOpenStatistics(screenName: "Utils Based Sample E Page", date: Date())
            AdvertisementsUtils.shared.showInterstitialAds()
            return vc
        }
    }
}
