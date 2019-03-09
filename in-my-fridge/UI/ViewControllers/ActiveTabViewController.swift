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
    let statusHeight = UIApplication.shared.statusBarFrame.size.height
    let navBarHeight = CGFloat(44)

    var tableView: UITableView?

    private let dataSource = FoodDataModel()
    fileprivate var data = [FoodModel]() {
        didSet {
            tableView?.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        self.title = "Active"
        self.tabBarItem = UITabBarItem(title: self.title, image: nil, selectedImage: nil)

        self.addNavBarToView()
        self.addTableToView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        dataSource.requestData()
    }

    private func addNavBarToView() {
        let navBarRect = CGRect(x: 0, y: statusHeight, width: view.frame.size.width, height: navBarHeight)
        let navBar = ActiveTabNavBar(frame: navBarRect)

        self.view.addSubview(navBar)
    }

    private func addTableToView() {
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height

        let tableRect = CGRect(x: 0, y: statusHeight + navBarHeight, width: displayWidth, height: displayHeight)
        tableView = UITableView(frame: tableRect, style: .plain)
        self.tableView?.register(FoodTableViewCell.nib, forCellReuseIdentifier: FoodTableViewCell.identifier)

        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.dataSource.delegate = self

        self.view.addSubview(self.tableView!)
    }
}

extension ActiveTabViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension ActiveTabViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: FoodTableViewCell.identifier, for: indexPath)
            as? FoodTableViewCell {
            cell.configureWithItem(item: self.data[indexPath.item])
            return cell
        }
        return UITableViewCell()
    }
}

extension ActiveTabViewController: FoodDataModelDelegate {
    func didFailDataUpdateWithError(error: Error) {
        print(error)
    }

    func didReceiveDataUpdate(data: [FoodModel]) {
        self.data = data
    }
}
