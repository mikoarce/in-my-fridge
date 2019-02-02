//
//  TabBarController.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-02-01.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let activeTabController = ActiveTabController()
        let historyTabController = HistoryTabController()
        self.viewControllers = [activeTabController, historyTabController]
        self.selectedIndex = 1
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Select view controller: \(viewController.title!)")
        return true
    }
}
