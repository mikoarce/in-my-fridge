//
//  ActiveTab.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-02-01.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Foundation
import UIKit

class ActiveTabController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        self.title = "Active"
        self.tabBarItem = UITabBarItem(title: self.title, image: nil, selectedImage: nil)
    }
}
