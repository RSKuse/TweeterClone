//
//  HomeViewController+TableView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/17.
//

import Foundation
import UIKit

extension HomeViewController {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tweetsCell = tableView.dequeueReusableCell(withIdentifier: "TweetsTableViewCellID", for: indexPath) as! TweetsTableViewCell
        tweetsCell.likeButtonView.isHidden = false
        return tweetsCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        if indexPath.row == 0 {
            let tweetDetailViewController = TwitterDetailsViewController()
            tweetDetailViewController.tableHeaderView = TweetDetailsHeaderView()
            tweetDetailViewController.tableHeaderView?.tweetLabel.attributedText = NSMutableAttributedString(string: "Learning how to code in swift 🎉", attributes: [NSAttributedString.Key.kern: -0.7])
            tweetDetailViewController.tableHeaderHeight = 330
            tweetDetailViewController.numberOfTweets = 5
            navigationController?.pushViewController(tweetDetailViewController, animated: true)
            
        } else if indexPath.row == 1 {
            let tweetDetailViewController = TwitterDetailsViewController()
            tweetDetailViewController.tableHeaderView = TweetDetailsHeaderLinkView()
            tweetDetailViewController.tableHeaderView?.tweetLabel.attributedText = NSMutableAttributedString(string: "Just met Black Coffee at the airport. Killer DJ 🇿🇦", attributes: [NSAttributedString.Key.kern: -0.7])
            tweetDetailViewController.tableHeaderHeight = 430
            tweetDetailViewController.numberOfTweets = 0
            navigationController?.pushViewController(tweetDetailViewController, animated: true)
            
        } else {
            let tweetDetailViewController = TwitterDetailsViewController()
            tweetDetailViewController.tableHeaderView = TweetImageHeaderView()
            tweetDetailViewController.tableHeaderView?.tweetLabel.attributedText = NSMutableAttributedString(string: "Must have icon collections", attributes: [NSAttributedString.Key.kern: -0.6])
            tweetDetailViewController.tableHeaderView?.tweetLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
            tweetDetailViewController.tableHeaderView?.tweetLabel.font = UIFont(name: "SFProText-Light", size: 22)
            tweetDetailViewController.tableHeaderView?.likesTitleLabel.attributedText = NSMutableAttributedString(string: "1 Like", attributes: [NSAttributedString.Key.kern: -0.3])
            tweetDetailViewController.tableHeaderView?.likesTitleLabel.font = UIFont(name: "SFProText-Semibold", size: 16)
            tweetDetailViewController.tableHeaderView?.likesTitleLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
            tweetDetailViewController.tableHeaderHeight = 530
            tweetDetailViewController.numberOfTweets = 0
            navigationController?.pushViewController(tweetDetailViewController, animated: true)
               
            
        }
        
    }
}
