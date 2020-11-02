//
//  ColorTableViewController.swift
//  PickAColor
//
//  Created by Robert Jeffers on 10/31/20.
//

import UIKit

var numbers = ["5","6","7","8","9","10","11","12","13","44","90"]

class ColorTableViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

extension ColorTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let number = numbers[indexPath.row]
        
        cell.textLabel?.text = number
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "colorvc", sender: nil)
    }
}
