//
//  CoordinatorPatternCoordinator.swift
//  DesignPatterns
//
//  Created by Gokhan Alp on 23.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import Foundation

class CoordinatorPatternCoordinator
{
    let listPage = CoordinatorPatternListPageViewController()
    var selectedValue: String = ""
    
    func start() -> CoordinatorPatternListPageViewController
    {
        listPage.coordinator = self
        return listPage
    }
    
    func goDetail(value: String)
    {
        let detailPage = CoordinatorPatternDetailViewController()
        self.selectedValue = value
        detailPage.coordinator = self
        self.listPage.navigationController?.pushViewController(detailPage, animated: true)
    }
}
