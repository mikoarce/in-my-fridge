//
//  ViewFoodDataNavBar.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-03-16.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Foundation
import UIKit

class ViewFoodDataNavBar: UINavigationBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white

        let navItem = UINavigationItem()
        let leftButton = UIBarButtonItem(title: "Back", style: .plain,
                                         target: self.parentFocusEnvironment, action: #selector(self.btnClick(_:)))

        navItem.leftBarButtonItem = leftButton
        self.items = [navItem]
    }

    @objc private func btnClick(_ sender: UIBarButtonItem) {
        print("perform back")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
