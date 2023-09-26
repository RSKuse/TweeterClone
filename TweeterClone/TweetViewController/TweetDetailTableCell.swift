//
//  TweetDetailTableCell.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/26.
//

import Foundation
import UIKit

class TweetDetailTableCell: TweetsTableViewCell {
    
    
    
    
    override func setupUI() {
        addSubview(profileImageView)
        
        
        profileImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 55).isActive = true
        
        
    }

}
