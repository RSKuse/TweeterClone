//
//  MessagesViewController.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/12.
//

import UIKit

class MessagesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var messageTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = true
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.separatorColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
        
    }()
    lazy var composeMessageImageButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_compose_message") /// `icon_compose_message`
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
        let icon = UIImage(named: "icon_setting") /// `icon_settings` `ic_settings`
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        handleRegisterCell()
        title = "Messages"
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
        view.addSubview(messageTableView)
        view.addSubview(composeMessageImageButton)
       
        messageTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        messageTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        messageTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        messageTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        composeMessageImageButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        composeMessageImageButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -21).isActive = true
    }
    
    func handleRegisterCell() {
        messageTableView.register(MessagesTableViewCell.self, forCellReuseIdentifier: "MessagesTableViewCellID")
    }
}

