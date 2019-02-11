//
//  ViewController.swift
//  DynamicHeightCollectionView
//
//  Created by Payal Gupta on 08/02/19.
//  Copyright © 2019 Payal Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var arr = ["Basic Operators", "Strings and Characters", "Collection Types", "Control Flow", "Structures and Classes", "Optional Chaining", "Closures", "Automatic Reference Counting", "Advanced Operators", "Access Control", "Memory Safety", "Generics", "Protocols", "Extensions", "Type Casting", "Nested Types", "Error Handling", "Deinitialization"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.configure(with: self.arr)
        return cell
    }
}
