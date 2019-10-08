//
//  BaseTabbarController.swift
//  LoginScreen
//
//  Created by RTC-HN154 on 10/7/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor(red: 0.149, green: 0.2, blue: 0.255, alpha: 1.0)
        tabBar.isTranslucent = false
        
        let attributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white,
            NSAttributedString.Key.font : UIFont(name: "AmericanTypewriter", size: 16)!
        ]
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .normal )
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let love = UIStoryboard.init(name: "Code", bundle: nil).instantiateViewController(withIdentifier: "love") as! LoveViewController
        
         let hate = UIStoryboard.init(name: "Code", bundle: nil).instantiateViewController(withIdentifier: "hate") as! HateViewController
        
         let sad = UIStoryboard.init(name: "Code", bundle: nil).instantiateViewController(withIdentifier: "sad") as! SadViewController
        
        
        let loveNav = BaseNavigationController(rootViewController: love)
        let hateNav = BaseNavigationController(rootViewController: hate)
        let sadNav = BaseNavigationController(rootViewController: sad)
        
        viewControllers = [loveNav, hateNav, sadNav]
        
        settingNavForEachController(viewcontroller: love, transparent: true, navTitle: "Love NAV", tabbarTitle: "Love", image: "love", selectedImage: "")
        settingNavForEachController(viewcontroller: hate, transparent: true, navTitle: "Hate NAV", tabbarTitle: "Hate", image: "hate", selectedImage: "")
        settingNavForEachController(viewcontroller: sad, transparent: true, navTitle: "Sad NAV", tabbarTitle: "Sad", image: "sad", selectedImage: "")
        
    }
    
    func settingNavForEachController(viewcontroller: BaseViewController,
                                     transparent: Bool,
                                     navTitle: String,
                                     tabbarTitle: String,
                                     image: String,
                                     selectedImage: String) {
        viewcontroller.navigationItem.title = navTitle
        viewcontroller.tabBarItem = UITabBarItem(title: tabbarTitle, image: UIImage(named: image)?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: selectedImage))
        viewcontroller.tranparent = transparent
        
    }
}
