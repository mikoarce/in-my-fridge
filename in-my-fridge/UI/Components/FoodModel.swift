//
//  FoodModel.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-02-27.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Foundation
import UIKit

class FoodModel {
    var foodImage: UIImage?
    var name: String?
    var dateAdded: Date?
    
    init?(data: [String: String]?) {
        if let data = data, let name = data["name"] {
            self.name = name
        } else {
            return nil
        }
    }
}
