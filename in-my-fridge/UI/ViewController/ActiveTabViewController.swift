//
//  ActiveTab.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-02-01.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Foundation
import UIKit

class ActiveTabViewController: UIViewController {
    let STATUS_HEIGHT = UIApplication.shared.statusBarFrame.size.height
    let NAV_BAR_HEIGHT = CGFloat(44)

    private func buildTable() -> UITableView {
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        let tableRect = CGRect(x: 0, y: STATUS_HEIGHT + NAV_BAR_HEIGHT, width: displayWidth, height: displayHeight)
        return FoodTableView(frame: tableRect, style: .plain)
    }
    
    private func buildNavBar() -> UINavigationBar {
        let navBar = ActiveTabNavBar(frame: CGRect(x: 0, y: STATUS_HEIGHT, width: view.frame.size.width, height: NAV_BAR_HEIGHT))

        return navBar
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        self.title = "Active"
        self.tabBarItem = UITabBarItem(title: self.title, image: nil, selectedImage: nil)
        
        self.view.addSubview(self.buildNavBar())
        self.view.addSubview(self.buildTable())
    }
}
