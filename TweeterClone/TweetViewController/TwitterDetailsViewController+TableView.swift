//
//  TwitterDetailsViewController+TableView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/24.
//

import Foundation
import UIKit

extension TwitterDetailsViewController {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tweetCell = tableView.dequeueReusableCell(withIdentifier: "TweetDetailTableCellID", for: indexPath) as!
        TweetDetailTableCell
        return tweetCell
    }

}
