//
//  ActiveTabNavBar.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-02-23.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Foundation
import UIKit

class ActiveTabNavBar: UINavigationBar {
    @objc private func btnClick(_ sender: UIBarButtonItem) {
        print("button pressed!")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white

        let navItem = UINavigationItem()
        let leftButton = UIBarButtonItem(title: "Left", style: .plain,
                                         target: self.parentFocusEnvironment, action: #selector(self.btnClick(_:)))
        let rightButton = UIBarButtonItem(title: "Right", style: .plain,
                                          target: self.parentFocusEnvironment, action: nil)

        navItem.leftBarButtonItem = leftButton
        navItem.rightBarButtonItem = rightButton
        self.items = [navItem]
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
