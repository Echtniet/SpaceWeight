//
//  WeightsTableViewController.swift
//  SpaceWeight
//
//  Created by Davelaar,Clinton B on 11/12/19.
//  Copyright © 2019 Davelaar,Clinton B. All rights reserved.
//

import UIKit

class WeightsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.title = "Earth Weights"
        navigationController?.tabBarItem.image = UIImage(named: "second")
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return WeightsModel.shared.numWeights()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weightcell", for: indexPath)

        let earthWeight = WeightsModel.shared[indexPath.row]
        
        cell.textLabel?.text = "\(earthWeight)"

        return cell
    }

}
