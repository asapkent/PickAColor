//
//  SelectedColorViewController.swift
//  PickAColor
//
//  Created by Robert Jeffers on 10/31/20.
//

import UIKit

class SelectedColorViewController: UIViewController {
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
    
}
