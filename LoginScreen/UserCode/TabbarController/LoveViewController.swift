//
//  LoveViewController.swift
//  LoginScreen
//
//  Created by RTC-HN154 on 10/7/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import UIKit

class LoveViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.restorationIdentifier = "love"

        let cameraBtnItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(takeAPicture(sender:)))
        navigationItem.leftBarButtonItem = cameraBtnItem
        let rightButton = UIBarButtonItem(image: UIImage(named: "love"), style: .plain, target: self, action: #selector(love(sender:)))
        navigationItem.rightBarButtonItem = rightButton
    }
    
    @objc func takeAPicture(sender: AnyObject) {
        print("picture")
    }
    
    @objc func love(sender: AnyObject) {
        print("love")
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
