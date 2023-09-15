//
//  ViewController.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/07.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var twitterTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = true
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.register(TweetsTableViewCell.self, forCellReuseIdentifier: "TweetsTableViewCellID")
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
        let icon = UIImage(named: "Martha Craig") /// icon naming is `icon_name`
        button.setImage(icon, for: .normal)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var featureStrokeIconButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_filter") /// icon naming is `icon_feature_filter`
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "icon_twitter_logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        
        let featureButton = UIBarButtonItem(customView: featureStrokeIconButton)
        featureStrokeIconButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        featureStrokeIconButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
        navigationItem.rightBarButtonItem = featureButton
        
        let profileImageButton = UIBarButtonItem(customView: profileImageViewButton)
        profileImageViewButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        profileImageViewButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
        navigationItem.leftBarButtonItem = profileImageButton
        
        logoImageView.widthAnchor.constraint(equalToConstant: 27).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 27).isActive = true
        navigationItem.titleView = logoImageView
    }
    
    func setupUI() {
        view.addSubview(twitterTableView)
        view.addSubview(composeTweetImageButton)
       
        twitterTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        twitterTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        twitterTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        twitterTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        composeTweetImageButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        composeTweetImageButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
    }
    
    // TODO: Move these to an extension
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let tweetsCell = tableView.dequeueReusableCell(withIdentifier: "TweetsTableViewCellID", for: indexPath) as! TweetsTableViewCell
        return tweetsCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let messageViewController = MessagesViewController()
        messageViewController.hidesBottomBarWhenPushed = false // Hide the TabBar when you do a push. 
        navigationController?.pushViewController(messageViewController, animated: true)
    }
}

