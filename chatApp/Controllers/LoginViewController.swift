//
//  ViewController.swift
//  chatApp
//
//  Created by neda niazalizadeh on 2020-08-03.
//  Copyright © 2020 neda niazalizadeh. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signinBtnPressed(_ sender: UIButton) {
        
        if usernameTxtField.text != nil && passwordTxtField.text != nil {
            Auth.auth().signIn(withEmail: usernameTxtField.text!, password: passwordTxtField.text!) { (dataResult, error) in
                if error != nil {
                    self.makeAlert(title: "Error", message: error!.localizedDescription)
                }
                else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: self)
                }
            }
        }
        else {
            self.makeAlert(title: "Error", message: "Please enter all the fields")
        }
    }
    
    @IBAction func registerBtnPressed(_ sender: UIButton) {
        
        if usernameTxtField.text != "" && passwordTxtField.text != "" {
            Auth.auth().createUser(withEmail: usernameTxtField.text!, password: passwordTxtField.text!) { (dataResult, error) in
                if error != nil {
                    self.makeAlert(title: "Error", message: error!.localizedDescription)
                }
                else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: self)
                }
            }
        } else {
            makeAlert(title: "Error", message: "Please fill all fields")
        }
    }
    
    //MARK:- make alert
    func makeAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okBtn)
        
        self.present(alert, animated: true, completion: nil)
    }
}

