//
//  TwitterDetailsViewController.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/17.
//

import Foundation
import UIKit

class TwitterDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tweetDetailView = TweetDetailsContainerView()
    
    lazy var tweetTableView: UITableView = {
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
    
    lazy var replyDetailView: ReplyTextFieldContainerView = {
        let view = ReplyTextFieldContainerView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tweet"
        setupUI()
        configureHeaderView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sizeHeaderToFit()
        
    }
    
    func setupUI() {
        
        view.addSubview(tweetTableView)
        view.addSubview(replyDetailView)
        
        tweetTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tweetTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tweetTableView.bottomAnchor.constraint(equalTo: replyDetailView.topAnchor).isActive = true
        tweetTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        replyDetailView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        replyDetailView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        replyDetailView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        replyDetailView.heightAnchor.constraint(equalToConstant: 51).isActive = true
    }
}
