//
//  TweetPhotoLinkHeaderView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/10/01.
//

import Foundation
import UIKit

class TweetPhotoLinkHeaderView: UIView {
    
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
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
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
    
    lazy var profileImageUserNameStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [profileImageView, userNameStackView])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var retweetprofileImageUserNameStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [retweetStackView, profileImageUserNameStackView])
        stackView.alignment = .leading
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 16
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
    
    lazy var tweetLinkContainerView: LinkContainerView = {
        let view = LinkContainerView()
        view.linkImageView.image = UIImage(named: "Rectangle")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var randomImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "random_image")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 2
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

    lazy var timeStampLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.textAlignment = .right
        label.attributedText = NSMutableAttributedString(string: "09:28 · 2/21/20 · Twitter Web App", attributes: [NSAttributedString.Key.kern: -0.3])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var tweetLabelLinkContainerImageViewsLabelTimeStamStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [tweetLabel, tweetLinkContainerView, randomImageView, viewsLabel, timeStampLabel])
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        stackView.axis = .vertical
        stackView.spacing = 14
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var dividerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.741, green: 0.773, blue: 0.804, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
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
        stackView.alignment = .trailing
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var dividerView3: UIView = {
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

    lazy var entireUITableStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [profileImageUserNameStackView, tweetLabel, tweetLinkContainerView, randomImageView, viewsLabel, timeStampLabel, dividerView, activityTweetStackView, dividerView2, retweetslikesStackView, dividerView3, commentRetweetLikeShareStackView, dividerView4 ])
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        stackView.axis = .vertical
        stackView.spacing = 14
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    func setupUI () {
        addSubview(retweetStackView)
        addSubview(profileImageView)
        addSubview(dividerView)
        addSubview(dividerView2)
        addSubview(dividerView4)
        addSubview(entireUITableStackView)
        addSubview(downArrowIconImageButton)
        
        retweetStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 60).isActive = true
        retweetStackView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true

        profileImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.topAnchor.constraint(equalTo: topAnchor,constant: 42).isActive = true

        entireUITableStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        entireUITableStackView.topAnchor.constraint(equalTo: topAnchor,constant: 16).isActive = true
        entireUITableStackView.rightAnchor.constraint(equalTo: rightAnchor,constant: -20).isActive = true
        entireUITableStackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        //entireUITableStackView.heightAnchor.constraint(equalToConstant: 900).isActive = true

        downArrowIconImageButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        downArrowIconImageButton.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
        

