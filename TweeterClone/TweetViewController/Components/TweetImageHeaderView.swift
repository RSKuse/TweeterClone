//
//  TweetImageHeaderView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/30.
//

import Foundation
import UIKit

class TweetImageHeaderView: TweetDetailsHeaderView {
    
    lazy var randomImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "random_image")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 2
        //imageView.isHidden = true
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var viewsLabel: UILabel = {
            let label = UILabel()
            label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
            label.text = "109 views"
            label.font = UIFont(name: "SFProText-Regular", size: 14)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
    override func setupUI() {
        addSubview(profileImageView)
        addSubview(userNameStackView)
        addSubview(tweetLabel)
        addSubview(randomImageView)
        addSubview(viewsLabel)
        addSubview(timeStampLabel)
        addSubview(dividerView)
        addSubview(likesTitleLabel)
        addSubview(dividerView2)
        addSubview(commentsButton)
        addSubview(retweetButton)
        addSubview(likeButton)
        addSubview(shareButton)
        addSubview(commentRetweetLikeShareStackView)
        addSubview(dividerView3)
        addSubview(downArrowIconImageButton)

        
        profileImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.topAnchor.constraint(equalTo: topAnchor,constant: 12).isActive = true
        
        userNameStackView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        userNameStackView.topAnchor.constraint(equalTo: topAnchor,constant: 20).isActive = true
        
        tweetLabel.leftAnchor.constraint(equalTo: profileImageView.leftAnchor).isActive = true
        tweetLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 24).isActive = true
        tweetLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true

        randomImageView.topAnchor.constraint(equalTo: tweetLabel.bottomAnchor, constant: 16).isActive = true
        randomImageView.leftAnchor.constraint(equalTo: tweetLabel.leftAnchor).isActive = true
        randomImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        randomImageView.heightAnchor.constraint(equalToConstant: 194).isActive = true
        
        viewsLabel.topAnchor.constraint(equalTo: randomImageView.bottomAnchor, constant: 8).isActive = true
        viewsLabel.leftAnchor.constraint(equalTo: randomImageView.leftAnchor).isActive = true
        viewsLabel.bottomAnchor.constraint(equalTo: timeStampLabel.topAnchor, constant: -17).isActive = true

        timeStampLabel.leftAnchor.constraint(equalTo: randomImageView.leftAnchor).isActive = true
        timeStampLabel.topAnchor.constraint(equalTo: randomImageView.bottomAnchor, constant: 47).isActive = true

        dividerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 14).isActive = true
        dividerView.topAnchor.constraint(equalTo: timeStampLabel.bottomAnchor, constant: 13).isActive = true
        dividerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -14).isActive = true
        dividerView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        likesTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        likesTitleLabel.topAnchor.constraint(equalTo: dividerView.bottomAnchor,constant: 13 ).isActive = true
        
        dividerView2.leftAnchor.constraint(equalTo: leftAnchor,constant: 14).isActive = true
        dividerView2.topAnchor.constraint(equalTo: likesTitleLabel.bottomAnchor, constant: 13).isActive = true
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
        dividerView3.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dividerView3.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        dividerView3.heightAnchor.constraint(equalToConstant: 0.5).isActive = true

        downArrowIconImageButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        downArrowIconImageButton.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true

    }

}
