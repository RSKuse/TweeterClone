//
//  TwitterViewController+TableView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/10/03.
//

import Foundation
import UIKit

extension TwitterViewController {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfTweets
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tweetCell = tableView.dequeueReusableCell(withIdentifier: "TweetDetailTableCellID", for: indexPath) as!
        TweetDetailTableCell
        return tweetCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
