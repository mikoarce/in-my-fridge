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

    @objc private func btnClick(_ sender: UIBarButtonItem) {
        print("button pressed!")
    }

    init() {
        super.init(nibName: nil, bundle: nil)

        view.backgroundColor = .red
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .mostRecent, tag: 0)
        self.title = "Active"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setNavBarButtons()
        self.addTableToView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        dataSource.requestData()
    }

    private func setNavBarButtons() {
        let leftButton = UIBarButtonItem(title: "Left", style: .plain,
                                         target: self, action: #selector(self.btnClick(_:)))
        let rightButton = UIBarButtonItem(title: "Right", style: .plain,
                                          target: self, action: nil)

        self.navigationItem.leftBarButtonItem = leftButton
        self.navigationItem.rightBarButtonItem = rightButton
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

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewFoodDataController = ViewFoodDataViewController()
        self.navigationController?.pushViewController(viewFoodDataController, animated: false)
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
