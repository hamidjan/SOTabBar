//
//  ViewController.swift
//  SOTabBar
//
//  Created by Ahmadalsofi on 01/03/2020.
//  Copyright (c) 2020 Ahmadalsofi. All rights reserved.
//


import UIKit
import SOTabBar
class ViewController: SOTabBarController {

    override func loadView() {
        super.loadView()
        SOTabBarSetting.tabBarTintColor = #colorLiteral(red: 2.248547389e-05, green: 0.7047000527, blue: 0.6947537661, alpha: 1)
        SOTabBarSetting.tabBarCircleSize = CGSize(width: 55, height: 55)
        SOTabBarSetting.tabBarHeight = 50
        SOTabBarSetting.tabBarSizeSelectedImage = 25
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.dataSource = self
        let homeStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HOME_ID")
        let chatStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CHAT_ID")
        let sleepStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SLEEP_ID")
        let musicStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MUSIC_ID")
        let meStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ME_ID")
        
        homeStoryboard.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_Selected"))
        homeStoryboard.tabBarItem.tag = 1
        chatStoryboard.tabBarItem = UITabBarItem(title: "Chat", image: UIImage(named: "chat"), selectedImage: UIImage(named: "chat_Selected"))
        chatStoryboard.tabBarItem.tag = 2
        sleepStoryboard.tabBarItem = UITabBarItem(title: "Sleep", image: UIImage(named: "moon"), selectedImage: UIImage(named: "moon_Selected"))
        sleepStoryboard.tabBarItem.tag = 3
        musicStoryboard.tabBarItem = UITabBarItem(title: "Music", image: UIImage(named: "music"), selectedImage: UIImage(named: "music_Selected"))
        musicStoryboard.tabBarItem.tag = 4
        meStoryboard.tabBarItem = UITabBarItem(title: "Me", image: UIImage(named: "menu"), selectedImage: UIImage(named: "menu_Selected"))
        meStoryboard.tabBarItem.tag = 5
           
        viewControllers = [homeStoryboard, chatStoryboard,sleepStoryboard,musicStoryboard,meStoryboard]
    }
    
}

extension ViewController: SOTabBarControllerDelegate {
    func tabBarController(_ tabBarController: SOTabBarController, didSelect viewController: UIViewController) {
        print(viewController.tabBarItem.title ?? "")
    }
}

extension ViewController: SOTabBarControllerDataSource {
    func getSelectedIndex() -> Int {
        return 2
    }
    
    func isLangRTL() -> Bool {
        return false
    }
}
