//
//  TabBarController.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-02-01.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarViewController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "In My Fridge"
        delegate = self

        let activeTabController = UINavigationController(rootViewController: ActiveTabViewController())
        let historyTabController = UINavigationController(rootViewController: HistoryTabViewController())

        self.viewControllers = [activeTabController, historyTabController]
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    func tabBarController(_ tabBarController: UITabBarController,
                          shouldSelect viewController: UIViewController) -> Bool {
        print("Select view controller: \(viewController.title!)")
        return true
    }
}
