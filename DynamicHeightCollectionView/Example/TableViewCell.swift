//
//  TableViewCell.swift
//  DynamicHeightCollectionView
//
//  Created by Payal Gupta on 11/02/19.
//  Copyright © 2019 Payal Gupta. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    var arr = [String]()
    
    func configure(with arr: [String]) {
        self.arr = arr
        self.collectionView.reloadData()
       // self.collectionView.layoutIfNeeded()
    }
}

extension TableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.textLabel.text = self.arr[indexPath.row]
        return cell
    }
}

extension TableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let text = self.arr[indexPath.row]
        let textSize = text.size(withAttributes:[.font: UIFont.systemFont(ofSize:12.0)])
        let cellHeight = textSize.height + 20.0
        let cellWidth = textSize.width + 30.0
        return CGSize(width: cellWidth, height: cellHeight)
    }
}
