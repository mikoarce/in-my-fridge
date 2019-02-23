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

    
    private func buildNavBar() -> UINavigationBar{
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let navBar = ActiveTabNavBar(frame: CGRect(x: 0, y: statusBarHeight, width: view.frame.size.width, height: 44))

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
