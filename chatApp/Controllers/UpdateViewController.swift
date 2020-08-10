//
//  UpdateViewController.swift
//  chatApp
//
//  Created by neda niazalizadeh on 2020-08-04.
//  Copyright © 2020 neda niazalizadeh. All rights reserved.
//

import UIKit
import Firebase

class UpdateViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var currentpassTxtFiled: UITextField!
    @IBOutlet weak var newpassTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTxtField.isEnabled = false
        usernameTxtField.text = Auth.auth().currentUser?.email
    }
    
    @IBAction func updateBtnPressed(_ sender: UIButton) {
        
        let password = newpassTxtField.text
        
        if currentpassTxtFiled.text != nil && newpassTxtField.text != nil {
            Auth.auth().currentUser?.updatePassword(to: password!, completion: { (error) in
                if error != nil {
                    print(error!.localizedDescription)
                }
                else {
                    print("success")
                }
            })
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func CancelBtnPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
