//
//  AppDelegate.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/07.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        /// This code launches the app to a specific controller.
        let appWindow = UIWindow(frame: UIScreen.main.bounds)
        appWindow.makeKeyAndVisible()
        appWindow.tintColor = UIColor(red: 0.298, green: 0.62, blue: 0.922, alpha: 1)
        appWindow.rootViewController = TabBarController()
        
        window = appWindow
        return true
    }
}

