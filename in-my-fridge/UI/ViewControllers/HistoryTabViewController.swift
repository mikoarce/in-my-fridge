//
//  HistoryTab.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-02-01.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Foundation
import UIKit

class HistoryTabViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        self.title = "History"
        self.tabBarItem = UITabBarItem(title: self.title, image: nil, selectedImage: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
