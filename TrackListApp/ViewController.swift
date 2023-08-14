//
//  ViewController.swift
//  TrackListApp
//
//  Created by Goodwasp on 14.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        myCell.textLabel?.text = "My first cell \(indexPath.description)"
        return myCell
    }
    
    
}
