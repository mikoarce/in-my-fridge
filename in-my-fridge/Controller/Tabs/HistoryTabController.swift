//
//  HistoryTab.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-02-01.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Foundation
import UIKit

class HistoryTabController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        self.title = "History"
        self.tabBarItem = UITabBarItem(title: self.title, image: nil, selectedImage: nil)
    }
}
