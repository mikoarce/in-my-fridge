//
//  FoodDataModel.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-02-27.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Foundation

protocol FoodDataModelDelegate: class {
    func didReceiveDataUpdate(data: [FoodModel])
    func didFailDataUpdateWithError(error: Error)
}

class FoodDataModel {
    weak var delegate: FoodDataModelDelegate?
    
    func requestData() {
        //        let error: Error?
        //
        //        if let err = error {
        //            delegate?.didFailDataUpdateWithError(error: err)
        //        }
        
        self.setData()
    }

    private func setData(/* response: [] */) {
        let response = [
            ["name": "Entry# 1"],
            ["name": "Entry# 2"]
        ]
        var data = [FoodModel]()
        
        for item in response {
            if let modelItem = FoodModel(data: item) {
                data.append(modelItem)
            }
        }
        delegate?.didReceiveDataUpdate(data: data)
    }
}
