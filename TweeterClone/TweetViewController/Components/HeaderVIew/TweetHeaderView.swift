//
//  TweetGifPollPhotoLinkHeaderView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/10/01.
//

import Foundation
import UIKit

class TweetHeaderView: UIView {
    
    lazy var retweetView: TweetedByView = {
        let view = TweetedByView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var profileView: TweetProfileUserNameView = {
        let view = TweetProfileUserNameView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    
    lazy var tweetlinkView: TweetLinkView = {
        let view = TweetLinkView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var tweetImageView: TweetPhotoImageView = {
        let view = TweetPhotoImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    /*
    lazy var iconGraphImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "icon_activity"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var tweetActivityLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "SFProText-Regular", size: 16)
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
//        label.textAlignment = .left
        label.attributedText = NSMutableAttributedString(string: "View Tweet activity", attributes: [NSAttributedString.Key.kern: -0.3])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var activityTweetStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [iconGraphImageView, tweetActivityLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 8
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
    
    lazy var dividerView4: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.741, green: 0.773, blue: 0.804, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    */
    
    

    lazy var timestampView: TweetTimeStampView = {
        let view = TweetTimeStampView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var numberOfReactionsView: TweetTimeStampView = {
        let view = TweetTimeStampView()
        view.timeStampLabel.text = "1 Like"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var headerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [retweetView,
                                                       profileView,
                                                       tweetLabel, 
                                                       tweetlinkView,
                                                       tweetImageView,
                                                       timestampView,
                                                       numberOfReactionsView])
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        stackView.axis = .vertical
        stackView.spacing = 14
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
//    lazy var downArrowIconImageButton: UIButton = {
//        let button = UIButton()
//        let icon = UIImage(named: "icon_downward")
//        button.setImage(icon, for: .normal)
//        button.imageView?.contentMode = .scaleAspectFit
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
    
    lazy var bottomLineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.808, green: 0.835, blue: 0.863, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
        

