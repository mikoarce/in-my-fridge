//
//  FoodTableViewCell.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-02-27.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    @IBOutlet weak var foodImage: UIImageView?
    @IBOutlet weak var foodName: UILabel?
    @IBOutlet weak var foodTimer: UILabel?
    
    class var identifier: String {
        return String(describing: self)
    }
    
    class var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureWithItem(item: FoodModel) {
        self.foodImage?.image = item.foodImage
        self.foodName?.text = item.name
        self.foodTimer?.text = "timer"
    }
    
}
