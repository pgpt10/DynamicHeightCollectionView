//
//  CollectionViewCell.swift
//  DynamicHeightCollectionView
//
//  Created by Payal Gupta on 11/02/19.
//  Copyright © 2019 Payal Gupta. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var textLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textLabel.text = nil
        self.layer.cornerRadius = 3.0
        self.layer.borderWidth = 1.0
        self.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).cgColor
    }
}
