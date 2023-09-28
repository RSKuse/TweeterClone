//
//  TweetDetailContainerView2.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/27.
//

import Foundation
import UIKit

class TweetDetailsContainerView2: TweetDetailsContainerView {
    

    lazy var tweetLinkContainerView: LinkContainerView = {
        let view = LinkContainerView()
        view.linkImageView.image = UIImage(named: "Rectangle")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func setupUI() {
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(userNameStackView)
        addSubview(tweetLabel)
        addSubview(tweetLinkContainerView)
        addSubview(timeStampLabel)
        addSubview(dividerView)
        addSubview(retweetslikesStackView)
        addSubview(dividerView2)
        addSubview(commentsButton)
        addSubview(retweetButton)
        addSubview(likeButton)
        addSubview(shareButton)
        addSubview(commentRetweetLikeShareStackView)
        addSubview(dividerView3)
        addSubview(retweetStackView)
        addSubview(downArrowIconImageButton)
        
        profileImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.topAnchor.constraint(equalTo: topAnchor,constant: 42).isActive = true
        
        userNameStackView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        userNameStackView.topAnchor.constraint(equalTo: topAnchor,constant: 49).isActive = true
        
        tweetLabel.leftAnchor.constraint(equalTo: profileImageView.leftAnchor).isActive = true
        tweetLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 23).isActive = true
        tweetLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        tweetLinkContainerView.leftAnchor.constraint(equalTo: tweetLabel.leftAnchor).isActive = true
        tweetLinkContainerView.topAnchor.constraint(equalTo: tweetLabel.bottomAnchor, constant: 40).isActive = true
        tweetLinkContainerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        
        
        
    }
 

 
}
