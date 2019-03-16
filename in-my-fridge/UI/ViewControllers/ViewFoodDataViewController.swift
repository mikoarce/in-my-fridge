//
//  ViewFoodDataViewController.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-03-16.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import UIKit

class ViewFoodDataViewController: UIViewController {
    let statusHeight = UIApplication.shared.statusBarFrame.size.height
    let navBarHeight = CGFloat(44)

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "My Food Item"

        self.addNavBarToView()
    }

    private func addNavBarToView() {
        let navBarRect = CGRect(x: 0, y: statusHeight, width: view.frame.size.width, height: navBarHeight)
        let navBar = ViewFoodDataNavBar(frame: navBarRect)

        self.view.addSubview(navBar)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
