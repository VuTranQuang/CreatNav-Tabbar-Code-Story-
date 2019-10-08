//
//  ViewControllerCode.swift
//  LoginScreen
//
//  Created by RTC-HN154 on 10/7/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import UIKit

class ViewControllerCode: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tranparent = true
        setTitleForBackButton(title: "")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
        let signupVC = storyboard?.instantiateViewController(withIdentifier: "green") as! GreenViewController
        navigationController?.pushViewController(signupVC, animated: true)
    }
    @IBAction func loginButton(_ sender: UIButton) {
        let tabbar = BaseTabbarController()
        
        present(tabbar, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
