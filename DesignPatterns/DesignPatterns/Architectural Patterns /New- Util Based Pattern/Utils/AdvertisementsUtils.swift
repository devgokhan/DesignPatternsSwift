//
//  AdvertisementsUtils.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 8.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import Foundation

class AdvertisementsUtils {
    static let shared = AdvertisementsUtils()
    
    private init() {
        self.loadAllAds()
    }
    
    private func loadAllAds(){
        self.reloadInterstitialAds()
    }
    
    func reloadInterstitialAds() {
        // Code Here
    }
    
    func reloadBannerAds() {
         // Code Here
    }
    
    func showInterstitialAds() {
         // Code Here
    }
    
    func showBannerAds() {
         // Code Here
    }
}
