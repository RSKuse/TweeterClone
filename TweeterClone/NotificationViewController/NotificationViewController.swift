//
//  NotificationViewController.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/15.
//

import UIKit

class NotificationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var notificationTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = true
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.separatorColor = UIColor(red: 0.808, green: 0.835, blue: 0.863, alpha: 1)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
        
    }()
    lazy var composeTweetImageButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_compose_tweet")
        button.setImage(icon, for: .normal)
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var profileImageViewButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "karennne")
        button.setImage(icon, for: .normal)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var settingIconButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_setting")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        handleRegisterCell()
        title = "Notifications"
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        let settingButton = UIBarButtonItem(customView: settingIconButton)
        settingIconButton.widthAnchor.constraint(equalToConstant: 21).isActive = true
        settingIconButton.heightAnchor.constraint(equalToConstant: 21).isActive = true
        navigationItem.rightBarButtonItem = settingButton
        
 
        let profileImageButton = UIBarButtonItem(customView: profileImageViewButton)
        profileImageViewButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        profileImageViewButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
        navigationItem.leftBarButtonItem = profileImageButton
    }
    
    func setupUI() {
        view.addSubview(notificationTableView)
        view.addSubview(composeTweetImageButton)
       
        notificationTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        notificationTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        notificationTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        notificationTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        composeTweetImageButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        composeTweetImageButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -21).isActive = true
    }
    
    func handleRegisterCell() {
        notificationTableView.register(NotificationTableViewCell.self, forCellReuseIdentifier: "NotificationTableViewCellID")
    }
}

