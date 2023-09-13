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
        tableView.separatorColor = UIColor(red: 0.808, green: 0.835, blue: 0.863, alpha: 1) 
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
        
    }()
    lazy var composeTweetImageButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "Add text button")
        button.setImage(icon, for: .normal)
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var profileImageViewButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "Martha Craig")
        button.setImage(icon, for: .normal)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var featureStrokeIconButton: UIButton = {
            let button = UIButton()
            let icon = UIImage(named: "Feature stroke icon")
            button.setImage(icon, for: .normal)
            button.imageView?.contentMode = .scaleAspectFit
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        handleRegisterCell()
        let profileImageButton = UIBarButtonItem(customView: profileImageViewButton)
        let featureButton = UIBarButtonItem(customView: featureStrokeIconButton)
        navigationItem.leftBarButtonItem = profileImageButton
        navigationItem.rightBarButtonItem = featureButton
        let logoImageView = UIImageView(image: UIImage(named: "Twitter Logo"))
        logoImageView.contentMode = .scaleAspectFit
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 22))
        titleView.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        logoImageView.centerXAnchor.constraint(equalTo: titleView.centerXAnchor).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: titleView.centerYAnchor).isActive = true
        navigationItem.titleView = titleView
   
                
  
    }
    
    func setupUI() {
        view.addSubview(twitterTableView)
        view.addSubview(composeTweetImageButton)
        view.addSubview(profileImageViewButton)
        view.addSubview(featureStrokeIconButton)
       
        twitterTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        twitterTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        twitterTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        twitterTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        composeTweetImageButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        composeTweetImageButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60).isActive = true
        
        
        profileImageViewButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        profileImageViewButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -6).isActive = true
        profileImageViewButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        profileImageViewButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        featureStrokeIconButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        featureStrokeIconButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -6).isActive = true
        featureStrokeIconButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        featureStrokeIconButton.heightAnchor.constraint(equalToConstant: 32).isActive = true

        
        
    }
    
    func handleRegisterCell() {
        twitterTableView.register(TweetsTableViewCell.self, forCellReuseIdentifier: "TweetsTableViewCellID")
        
    }
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
        navigationController?.pushViewController(messageViewController, animated: true)
  
        
    }


}

