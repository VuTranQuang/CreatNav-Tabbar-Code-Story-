//
//  BaseViewController.swift
//  LoginScreen
//
//  Created by RTC-HN154 on 10/7/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var tranparent: Bool? {
        didSet {
            if tranparent == true {
                setTranparentForUINavBar()
            }
        }
    }
    
    var setTitleForBackButton: String? {
        didSet {
            guard let title = setTitleForBackButton else {
                return
            }
            setTitleForBackButton(title: title)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func setTranparentForUINavBar() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func setTitleForBackButton(title: String) {
        let backButton = UIBarButtonItem()
        backButton.title = title
        navigationItem.backBarButtonItem = backButton
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
