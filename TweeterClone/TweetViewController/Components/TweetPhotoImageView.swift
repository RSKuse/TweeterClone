//
//  TweetPhotoImageView.swift
//  TweeterClone
//
//  Created by Gugulethu Mhlanga on 2023/10/04.
//

import Foundation
import UIKit

class TweetPhotoImageView: UIView {
    
    lazy var tweetImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "random_image")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true // google: clipsToBounds vs MaskToBounds
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var numberOfTweetImageViews: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.text = "109 views"
        label.textAlignment = .right
        label.font = UIFont(name: "SFProText-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var tweetPhotoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [tweetImageView, numberOfTweetImageViews])
        stackView.alignment = .trailing
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(tweetPhotoStackView)
        
        tweetImageView.heightAnchor.constraint(equalToConstant: 194).isActive = true
        
        tweetPhotoStackView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tweetPhotoStackView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tweetPhotoStackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tweetPhotoStackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
}
