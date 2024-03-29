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
        let a = ConverterExampleClassA()
        a.dateval = Date()
        let b = Converter.convert(from: a, to: ConverterExampleClassB.self, tag: .defaultTag)
        Utils.log(b.stringval ?? "")
    }
    
    func setData()
    {
        if(self.firstEnter)
        {
            categories.append(CategoriesModel(title: "Creational Patterns", subCategories:
                [
                    CategoriesModel(title: "NEW! - Imitate Pattern", action: {
                        self.navigationController?.pushViewController(ImitatePatternViewController(), animated: true)
                    }),
                    
                    CategoriesModel(title: "Prototype Pattern", action: {
                        self.navigationController?.pushViewController(PrototypePatternViewController(), animated: true)
                    }),
                    
                    CategoriesModel(title: "Singleton Pattern", action: {
                        self.navigationController?.pushViewController(SingletonViewController(), animated: true)
                    })
                ]
            ))
            
            categories.append(CategoriesModel(title: "Behavioral Patterns", subCategories:
                [
                    CategoriesModel(title: "NEW! - Protected Template Pattern", action: {
                        self.navigationController?.pushViewController(ProtectedTemplatePatternViewController(), animated: true)
                    }),
                    
                    CategoriesModel(title: "Template Pattern", action: {
                         self.navigationController?.pushViewController(TemplateViewController(), animated: true)
                    })
                ]
            ))
            
            categories.append(CategoriesModel(title: "Architectural Patterns", subCategories:
                [
                    CategoriesModel(title: "NEW! - Util Based Pattern", action: {
                        self.navigationController?.pushViewController(UtilsSampleViewController(), animated: true)
                    }),
                    
                    CategoriesModel(title: "Coordinator Pattern", action: {
                        self.navigationController?.pushViewController(CoordinatorPatternCoordinator().start(), animated: true)
                    }),
                    
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
