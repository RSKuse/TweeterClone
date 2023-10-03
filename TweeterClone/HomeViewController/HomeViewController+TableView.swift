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
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tweetsCell = tableView.dequeueReusableCell(withIdentifier: "TweetsTableViewCellID", for: indexPath) as! TweetsTableViewCell
        tweetsCell.likeButtonView.isHidden = false
        return tweetsCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let tweetDetailViewController = TwitterDetailsViewController()
        
        if indexPath.row == 0 {
            tweetDetailViewController.tableHeaderHeight = 490
            tweetDetailViewController.tableHeaderView.tweetlinkView.isHidden = true
        }
        
        if indexPath.row == 1 {
            tweetDetailViewController.tableHeaderHeight = 350
            tweetDetailViewController.tableHeaderView.tweetImageView.isHidden = true
        }
        
        if indexPath.row == 2 {
            tweetDetailViewController.tableHeaderHeight = 260
            tweetDetailViewController.tableHeaderView.tweetlinkView.isHidden = true
            tweetDetailViewController.tableHeaderView.tweetImageView.isHidden = true
        }
        
        if indexPath.row == 3 {
            tweetDetailViewController.tableHeaderHeight = 570
            tweetDetailViewController.tableHeaderView.retweetView.isHidden = true
        }
        
        navigationController?.pushViewController(tweetDetailViewController, animated: true)
        
        /*
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
            
        } else if indexPath.row == 2 {
            let tweetDetailViewController = TwitterDetailsViewController()
            tweetDetailViewController.tableHeaderView = TweetHeaderView()
            tweetDetailViewController.tableHeaderView?.tweetLabel.attributedText = NSMutableAttributedString(string: "Just met Black Coffee at the airport. Killer DJ 🇿🇦", attributes: [NSAttributedString.Key.kern: -0.7])
            tweetDetailViewController.tableHeaderHeight = 430
            tweetDetailViewController.numberOfTweets = 0
            navigationController?.pushViewController(tweetDetailViewController, animated: true)
            
        } else if indexPath.row == 3 {
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
            
            
        } else {
            let tweetDetailViewController = TwitterViewController()
            tweetDetailViewController.tableHeaderView = TweetPhotoLinkHeaderView()
            tweetDetailViewController.tableHeaderView?.tweetLabel.attributedText = NSMutableAttributedString(string: "Must have icon collections", attributes: [NSAttributedString.Key.kern: -0.6])
            tweetDetailViewController.tableHeaderView?.tweetLabel.numberOfLines = 4
            tweetDetailViewController.tableHeaderView?.tweetLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
            tweetDetailViewController.tableHeaderView?.tweetLabel.font = UIFont(name: "SFProText-Light", size: 22)
            tweetDetailViewController.tableHeaderView?.likesTitleLabel.attributedText = NSMutableAttributedString(string: "1 Like", attributes: [NSAttributedString.Key.kern: -0.3])
            tweetDetailViewController.tableHeaderView?.likesTitleLabel.font = UIFont(name: "SFProText-Semibold", size: 16)
            tweetDetailViewController.tableHeaderView?.likesTitleLabel.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
            tweetDetailViewController.tableHeaderHeight = 616
            tweetDetailViewController.numberOfTweets = 0
            navigationController?.pushViewController(tweetDetailViewController, animated: true)
            
        }
        */
    }
}
