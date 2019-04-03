//
//  ViewController.swift
//  DesignPatterns
//
//  Created by gokhan alp on 3.04.2019.
//  Copyright © 2019 Gokhan Alp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var categories = [CategoriesModel]()
    var firstEnter = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setData()
    }
    
    func setData()
    {
        if(self.firstEnter)
        {
            categories.append(CategoriesModel(title: "Behavioral Patterns", subCategories:
                [
                    CategoriesModel(title: "Template Pattern", action: {
                         self.navigationController?.pushViewController(TemplateViewController(), animated: true)
                    })
                ]
            ))
        }
        self.tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        let category = categories[indexPath.row]
        cell.textLabel?.text = category.categoryTitle
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        if let action = category.actionBlock {
            action()
        } else if let subCategories = category.subCategories {
            let vc = Utils.getViewController(ViewController.self, storyboard: .main)
            vc.firstEnter = false
            vc.categories = subCategories
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}
