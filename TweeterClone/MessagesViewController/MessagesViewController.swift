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
        let icon = UIImage(named: "Add Text Button-2")
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
            let icon = UIImage(named: "Settings Stroke Icon")
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
        let profileImageButton = UIBarButtonItem(customView: profileImageViewButton)
        let settingButton = UIBarButtonItem(customView: settingIconButton)
        navigationItem.leftBarButtonItem = profileImageButton
        navigationItem.rightBarButtonItem = settingButton

    }
    
    func setupUI() {
        view.addSubview(messageTableView)
        view.addSubview(composeMessageImageButton)
        view.addSubview(profileImageViewButton)
        view.addSubview(settingIconButton)
       
        messageTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        messageTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        messageTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        messageTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        composeMessageImageButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        composeMessageImageButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60).isActive = true
        
        
        profileImageViewButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        profileImageViewButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -6).isActive = true
        profileImageViewButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        profileImageViewButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        settingIconButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        settingIconButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        settingIconButton.widthAnchor.constraint(equalToConstant: 21).isActive = true
        settingIconButton.heightAnchor.constraint(equalToConstant: 21).isActive = true

        
        
    }
    
    func handleRegisterCell() {
        messageTableView.register(MessagesTableViewCell.self, forCellReuseIdentifier: "MessagesTableViewCellID")
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let messageCell = tableView.dequeueReusableCell(withIdentifier: "MessagesTableViewCellID", for: indexPath) as! MessagesTableViewCell
        return messageCell
    }


}

