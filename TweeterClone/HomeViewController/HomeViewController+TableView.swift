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
        
        let tweetDetailViewController = TwitterDetailsViewController()
        
        if indexPath.row == 0 {
            tweetDetailViewController.tableHeaderView = TweetDetailsHeaderView()
            tweetDetailViewController.tableHeaderView.tweetLabel.attributedText = NSMutableAttributedString(string: "Learning how to code in swift 🎉", attributes: [NSAttributedString.Key.kern: -0.7])
            tweetDetailViewController.tableHeaderHeight = 330
            tweetDetailViewController.numberOfTweets = 5
            navigationController?.pushViewController(tweetDetailViewController, animated: true)
        } else {
            tweetDetailViewController.tableHeaderView = TweetDetailsHeaderLinkView()
            tweetDetailViewController.tableHeaderView.tweetLabel.attributedText = NSMutableAttributedString(string: "Just met Black Coffee at the airport. Killer DJ 🇿🇦", attributes: [NSAttributedString.Key.kern: -0.7])
            tweetDetailViewController.tableHeaderHeight = 430
            tweetDetailViewController.numberOfTweets = 0
            navigationController?.pushViewController(tweetDetailViewController, animated: true)
        }
        
       
    }
    
}
