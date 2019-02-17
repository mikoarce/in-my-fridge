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
    @objc private func btnClick(_ sender: UIBarButtonItem) {
        print("button pressed!")
    }
    
    private func buildNavBar() -> UINavigationBar{
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight, width: view.frame.size.width, height: 44))
        navBar.backgroundColor = .white
        
        let navItem = UINavigationItem()
        let leftButton = UIBarButtonItem(title: "Left", style: .plain, target: self, action: #selector(self.btnClick(_:)))
        let rightButton = UIBarButtonItem(title: "Right", style: .plain, target: self, action: nil)
        
        navItem.leftBarButtonItem = leftButton
        navItem.rightBarButtonItem = rightButton
        navBar.items = [navItem]
        
        return navBar
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        self.title = "Active"
        self.tabBarItem = UITabBarItem(title: self.title, image: nil, selectedImage: nil)
        
        self.view.addSubview(self.buildNavBar())
    }
}
