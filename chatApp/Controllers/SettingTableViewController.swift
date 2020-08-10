//
//  SettingTableViewController.swift
//  chatApp
//
//  Created by neda niazalizadeh on 2020-08-03.
//  Copyright © 2020 neda niazalizadeh. All rights reserved.
//

import UIKit
import Firebase

class SettingTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func logoutBtnPressed(_ sender: UIButton) {
        
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "logoutVC", sender: self)
        } catch {
            print("error in setting")
        }
    }
    
    @IBAction func changePasswordBtnPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "passwordVC", sender: self)
    }
}
