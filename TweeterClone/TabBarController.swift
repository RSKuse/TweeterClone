//
//  TabBarController.swift
//  TweeterClone
//
//  Created by Gugulethu Mhlanga on 2023/09/13.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupTabBar()
        setupViewControllers()
    }
    
    func setupTabBar() {
        tabBar.isTranslucent = true
        tabBar.barTintColor = UIColor.white
    }
    
    func setupViewControllers() {
        
        // Home
        let homeTabBarItem = UITabBarItem(title: nil,
                                          image: UIImage(named: "icon_home"),
                                          selectedImage: UIImage(named: "icon_home_selected"))
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        homeViewController.tabBarItem = homeTabBarItem
        
        // Messages
        let messagesTabBarItem = UITabBarItem(title: "Messages",
                                              image: UIImage(named: "icon_messages"),
                                              selectedImage: UIImage(named: "icon_messages_selected"))
        let messagesController = UINavigationController(rootViewController: MessagesViewController())
        messagesController.tabBarItem = messagesTabBarItem
        
        let notificationsTabBarItem = UITabBarItem(title: "Notifications",
                                              image: UIImage(named: "icon_notification"),
                                              selectedImage: UIImage(named: "icon_notification_selected"))
        let notificationsController = UINavigationController(rootViewController: NotificationViewController())
        notificationsController.tabBarItem = notificationsTabBarItem
        
        self.viewControllers = [homeViewController, notificationsController, messagesController]
        
    }
}
