//
//  TweetHeaderView+SetupUI.swift
//  TweeterClone
//
//  Created by Gugulethu Mhlanga on 2023/10/04.
//

import Foundation
import UIKit

extension TweetHeaderView {
    
    func setupUI () {
        addSubview(headerStackView)
        addSubview(bottomLineView)
        
        retweetView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        profileView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        profileView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        tweetlinkView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        tweetImageView.heightAnchor.constraint(equalToConstant: 224).isActive = true
        
        timestampView.heightAnchor.constraint(equalToConstant: 34).isActive = true
        timestampView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        numberOfReactionsView.heightAnchor.constraint(equalToConstant: 34).isActive = true
        numberOfReactionsView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        headerStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        headerStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        headerStackView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        
        bottomLineView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bottomLineView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        bottomLineView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        bottomLineView.heightAnchor.constraint(equalToConstant: 6).isActive = true
    }
    
}
