//
//  TweetDetailTableCell.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/26.
//

import Foundation
import UIKit

class TweetDetailTableCell: TweetsTableViewCell {
    
        lazy var replyLabel: UILabel = {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
            label.attributedText = NSMutableAttributedString(string: "Replying to @karennne", attributes: [NSAttributedString.Key.kern: -0.3])
            label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
            label.textAlignment = .right
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
    override func setupUI() {
        addSubview(profileImageView)
        addSubview(userNameTimeStampStackView)
        addSubview(replyLabel)
        addSubview(tweetLabel)
        addSubview(cellButtonsStackView)
        addSubview(downArrowIconImageButton)
        
        profileImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: leftAnchor,constant: 20).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 55).isActive = true
        
        userNameTimeStampStackView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 10).isActive = true
        userNameTimeStampStackView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true

        replyLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 10).isActive = true
        replyLabel.topAnchor.constraint(equalTo: userNameTimeStampStackView.bottomAnchor, constant: 4).isActive = true
        
        tweetLabel.leftAnchor.constraint(equalTo: replyLabel.leftAnchor).isActive = true
        tweetLabel.topAnchor.constraint(equalTo: replyLabel.bottomAnchor, constant: 6).isActive = true
        tweetLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        tweetLabel.bottomAnchor.constraint(equalTo: cellButtonsStackView.topAnchor, constant: -20).isActive = true
        
        cellButtonsStackView.leftAnchor.constraint(equalTo: tweetLabel.leftAnchor).isActive = true
        cellButtonsStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 4).isActive = true
        cellButtonsStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        cellButtonsStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        downArrowIconImageButton.rightAnchor.constraint(equalTo: tweetLabel.rightAnchor).isActive = true
        downArrowIconImageButton.centerYAnchor.constraint(equalTo: userNameTimeStampStackView.centerYAnchor).isActive = true
        
    }

}
