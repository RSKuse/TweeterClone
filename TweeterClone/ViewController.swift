//
//  ViewController.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/07.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var twitterTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        handleRegisterCell()
     
    }
    
    func setupUI() {
        view.addSubview(twitterTableView)
        
        twitterTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        twitterTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        twitterTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        twitterTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
    
    func handleRegisterCell() {
        twitterTableView.register(TweetsTableViewCell.self, forCellReuseIdentifier: "TweetsTableViewCellID")
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(199.33)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let tweetsCell = tableView.dequeueReusableCell(withIdentifier: "TweetsTableViewCellID", for: indexPath) as! TweetsTableViewCell
        return tweetsCell
    }


}

