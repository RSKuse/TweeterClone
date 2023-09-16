//
//  TweetsTableViewCell.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/07.
//

import Foundation
import UIKit

class TweetsTableViewCell: UITableViewCell {
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Martha Craig")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 27.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        label.text = "Martha Craig"
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.attributedText = NSMutableAttributedString(string: "@craig_love",
                                                         attributes: [NSAttributedString.Key.kern: -0.3])
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timeStampLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.textAlignment = .right
        label.attributedText = NSMutableAttributedString(string: "• 12h", attributes: [NSAttributedString.Key.kern: -0.3])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userNameTimeStampStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, userNameLabel, timeStampLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var tweetLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.15
        label.numberOfLines = 2
        label.attributedText = NSMutableAttributedString(string: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? \n#TellMeAboutYou", attributes: [NSAttributedString.Key.kern: -0.3, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var commentsButtonView: TweetCellButtonView = {
        let buttonView = TweetCellButtonView()
        buttonView.buttonImageView.image = UIImage(named: "icon_comments")
        buttonView.buttonTextLabel.text = "28"
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        return buttonView
    }()
    
    lazy var retweetButtonView: TweetCellButtonView = {
        let buttonView = TweetCellButtonView()
        buttonView.buttonImageView.image = UIImage(named: "Retweet stroke icon")
        buttonView.buttonTextLabel.text = "5"
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        return buttonView
    }()
    
    lazy var likeButtonView: TweetCellButtonView = {
        let buttonView = TweetCellButtonView()
        buttonView.buttonImageView.image = UIImage(named: "Heart stroke icon")
        buttonView.buttonTextLabel.text = "21"
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        return buttonView
    }()
    
    lazy var shareButtonView: TweetCellButtonView = {
        let buttonView = TweetCellButtonView()
        buttonView.buttonImageView.image = UIImage(named: "Share stroke icon")
        buttonView.buttonTextLabel.text = ""
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        return buttonView
    }()
    
    lazy var cellButtonsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [commentsButtonView,
                                                       retweetButtonView,
                                                       likeButtonView,
                                                       shareButtonView])
        stackView.alignment = .leading
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var likeHeartSolidImageButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "Heart Solid Icon")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var likedLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.attributedText = NSMutableAttributedString(string: "Kieron Dotson and Zack John liked",
                                                         attributes: [NSAttributedString.Key.kern: -0.15])
        label.text = "Kieron Dotson and Zack John liked"
        label.font = UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var likedStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [likeHeartSolidImageButton, likedLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 8
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

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        setupUI()

    }
    func setupUI() {
        contentView.addSubview(profileImageView)
        contentView.addSubview(userNameTimeStampStackView)
        contentView.addSubview(tweetLabel)
        contentView.addSubview(cellButtonsStackView)
        contentView.addSubview(likedLabel)
        contentView.addSubview(likedStackView)
        contentView.addSubview(downArrowIconImageButton)

    

        profileImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor,
                                               constant: 20).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.topAnchor.constraint(equalTo: contentView.topAnchor,
                                              constant: 32).isActive = true

        userNameTimeStampStackView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor,
                                                         constant: 10).isActive = true
        userNameTimeStampStackView.topAnchor.constraint(equalTo: profileImageView.topAnchor).isActive = true
        
        cellButtonsStackView.leftAnchor.constraint(equalTo: userNameTimeStampStackView.leftAnchor).isActive = true
        cellButtonsStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        cellButtonsStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        cellButtonsStackView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        
        
        tweetLabel.leftAnchor.constraint(equalTo: userNameTimeStampStackView.leftAnchor).isActive = true
        tweetLabel.topAnchor.constraint(equalTo: userNameTimeStampStackView.bottomAnchor,
                                        constant: 2).isActive = true
        tweetLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor,
                                          constant: -20).isActive = true
        tweetLabel.bottomAnchor.constraint(equalTo: cellButtonsStackView.topAnchor,
                                           constant: -20).isActive = true

        commentsButtonView.buttonImageView.heightAnchor.constraint(equalToConstant: 15).isActive = true
        commentsButtonView.buttonImageView.widthAnchor.constraint(equalToConstant: 16).isActive = true
        
        retweetButtonView.buttonImageView.heightAnchor.constraint(equalToConstant: 13).isActive = true
        retweetButtonView.buttonImageView.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        likeButtonView.buttonImageView.heightAnchor.constraint(equalToConstant: 14).isActive = true
        likeButtonView.buttonImageView.widthAnchor.constraint(equalToConstant: 15).isActive = true
        
        shareButtonView.buttonImageView.heightAnchor.constraint(equalToConstant: 15).isActive = true
        shareButtonView.buttonImageView.widthAnchor.constraint(equalToConstant: 15).isActive = true
        
        likedStackView.leftAnchor.constraint(equalTo: userNameTimeStampStackView.leftAnchor, constant: -23).isActive = true
        likedStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        
        downArrowIconImageButton.rightAnchor.constraint(equalTo: tweetLabel.rightAnchor).isActive = true
        downArrowIconImageButton.centerYAnchor.constraint(equalTo: userNameTimeStampStackView.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
    }
    
}

    
    
    
