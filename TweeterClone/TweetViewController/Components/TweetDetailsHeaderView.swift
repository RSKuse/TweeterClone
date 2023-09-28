//
//  TweetDetailsContainerView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/18.
//

import Foundation
import UIKit

class TweetDetailsHeaderView: UIView {
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "karennne")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 27.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
            let label = UILabel()
            label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
            label.text = "Karennne"
            label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.attributedText = NSMutableAttributedString(string: "@karennne", attributes: [NSAttributedString.Key.kern: -0.3])
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userNameStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, userNameLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var tweetLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.15
        label.numberOfLines = 0
        label.attributedText = NSMutableAttributedString(string: "~~ hiring for a UX Lead in Sydney - who should I talk to?", attributes: [NSAttributedString.Key.kern: -0.7, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont(name: "SFProText-Light", size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var timeStampLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.textAlignment = .right
        label.attributedText = NSMutableAttributedString(string: "09:28 · 2/21/20 · Twitter Web App", attributes: [NSAttributedString.Key.kern: -0.3])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var dividerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.741, green: 0.773, blue: 0.804, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var retweetsTitleLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.textAlignment = .right
        label.attributedText = NSMutableAttributedString(string: "6 Retweets", attributes: [NSAttributedString.Key.kern: -0.3])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var likesTitleLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.textAlignment = .right
        label.attributedText = NSMutableAttributedString(string: "15 Likes", attributes: [NSAttributedString.Key.kern: -0.3])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var retweetslikesStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [retweetsTitleLabel, likesTitleLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var dividerView2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.741, green: 0.773, blue: 0.804, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var commentsButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_comments")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var retweetButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_retweet")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var likeButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_heart")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var shareButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_share")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var commentRetweetLikeShareStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [commentsButton, retweetButton, likeButton, shareButton])
        stackView.alignment = .leading
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 60
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var retweetImageButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_retweet")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var retweetLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.attributedText = NSMutableAttributedString(string: "The UX Person Retweeted ", attributes: [NSAttributedString.Key.kern: -0.2])
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var retweetStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [retweetImageButton, retweetLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var downArrowIconImageButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "icon_downward")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var dividerView3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.741, green: 0.773, blue: 0.804, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    func setupUI () {
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(userNameStackView)
        addSubview(tweetLabel)
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

        timeStampLabel.leftAnchor.constraint(equalTo: tweetLabel.leftAnchor).isActive = true
        timeStampLabel.topAnchor.constraint(equalTo: tweetLabel.bottomAnchor, constant: 35).isActive = true

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
        dividerView3.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dividerView3.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        dividerView3.heightAnchor.constraint(equalToConstant: 0.5).isActive = true

        downArrowIconImageButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        downArrowIconImageButton.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true

        retweetStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 60).isActive = true
        retweetStackView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        retweetStackView.bottomAnchor.constraint(equalTo:profileImageView.topAnchor, constant: -16).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
        

