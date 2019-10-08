//
//  ViewController.swift
//  LoginScreen
//
//  Created by RTC-HN154 on 10/7/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passText: UITextField!
    
    var users = ["Havi": "123",
                 "AnhUni": "456",
                 "Vu": "1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginButton(_ sender: UIButton) {
        if let password = users[emailText.text!] {
            if password == passText.text {
                let tabBar = self.storyboard?.instantiateViewController(withIdentifier: "tabBar")
                self.navigationController?.pushViewController(tabBar!, animated: true)
            } else {
                print("mk not found")
            }
        } else {
            print("user not found")
        }
    }
    
}

