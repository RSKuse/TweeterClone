//
//  TweetDetailContainerView2.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/27.
//

import Foundation
import UIKit

class TweetDetailsHeaderLinkView: TweetDetailsHeaderView {
    
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
        tweetLinkContainerView.topAnchor.constraint(equalTo: tweetLabel.bottomAnchor, constant: 20).isActive = true
        tweetLinkContainerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        tweetLinkContainerView.heightAnchor.constraint(equalToConstant: 80).isActive = true

        timeStampLabel.leftAnchor.constraint(equalTo: tweetLabel.leftAnchor).isActive = true
        timeStampLabel.topAnchor.constraint(equalTo: tweetLinkContainerView.bottomAnchor, constant: 26).isActive = true

        dividerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 14).isActive = true
        dividerView.topAnchor.constraint(equalTo: timeStampLabel.bottomAnchor, constant: 15).isActive = true
        dividerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -14).isActive = true
        dividerView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true

        retweetslikesStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        retweetslikesStackView.topAnchor.constraint(equalTo: dividerView.bottomAnchor,constant: 13 ).isActive = true
        
        dividerView2.leftAnchor.constraint(equalTo: leftAnchor,constant: 14).isActive = true
        dividerView2.topAnchor.constraint(equalTo: retweetslikesStackView.bottomAnchor, constant: 13).isActive = true
        dividerView2.rightAnchor.constraint(equalTo: rightAnchor, constant: -14).isActive = true
        dividerView2.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
  
        commentsButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        commentsButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        retweetButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        retweetButton.widthAnchor.constraint(equalToConstant: 20).isActive = true

        likeButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        likeButton.widthAnchor.constraint(equalToConstant: 20).isActive = true

        shareButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        shareButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        commentRetweetLikeShareStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 60).isActive = true
        commentRetweetLikeShareStackView.topAnchor.constraint(equalTo: dividerView2.bottomAnchor,constant: 13).isActive = true
        
        dividerView3.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        dividerView3.topAnchor.constraint(equalTo: shareButton.bottomAnchor, constant: 13).isActive = true
        dividerView3.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        dividerView3.heightAnchor.constraint(equalToConstant: 0.5).isActive = true

        downArrowIconImageButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        downArrowIconImageButton.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true

        retweetStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 60).isActive = true
        retweetStackView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        retweetStackView.bottomAnchor.constraint(equalTo:profileImageView.topAnchor, constant: -16).isActive = true
    }
 

 
}
