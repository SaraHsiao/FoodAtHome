//
//  DetailTableViewController.swift
//  sideMenu
//
//  Created by KaFeiDou on 2017/8/14.
//  Copyright © 2017年 KaFeiDou. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.cz_random()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
}
