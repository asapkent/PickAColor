//
//  ColorTableViewController.swift
//  PickAColor
//
//  Created by Robert Jeffers on 10/31/20.
//

import UIKit


var colors: [UIColor] = []

class ColorTableViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickRandomColors()
    }
    
func pickRandomColors() {
    for _ in 0..<100 {
        colors.append(createColors())
    }
  }
    func createColors() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1.0), green: CGFloat.random(in: 0...1.0), blue: CGFloat.random(in: 0...1.0), alpha: 1)
        return randomColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // casting allows access to color prop in other VC
        let vc = segue.destination as! SelectedColorViewController
        vc.color = sender as? UIColor
    }
}



extension ColorTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "colorvc", sender: color)
    }
}
