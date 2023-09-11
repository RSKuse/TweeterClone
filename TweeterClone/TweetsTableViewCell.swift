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
        imageView.backgroundColor = .red
        return imageView
    }()
    lazy var twitterLogoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        return imageView
    }()
    
    lazy var featureStrokeIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        return imageView
    }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Martha Craig"
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var handleNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.text = "@craig_love"
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timeStampLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.textColor = UIColor.gray
        label.textAlignment = .right
        label.text = "12h"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userNameTimeStampStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [userNameLabel, handleNameLabel, timeStampLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var tweetLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var commentsStrokeIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Comment Stroke Icon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.translatesAutoresizingMaskIntoConstraints = false
        //imageView.backgroundColor = .cyan
        return imageView
    }()
    
    lazy var commentsCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.text = "28"
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var retweetsImageButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "Retweet stroke icon")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var retweetsCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.text = "5"
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var likesHeartImageButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "Heart stroke icon")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var likesCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.text = "21"
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var shareStrokeImageButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "Share stroke icon")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var likeHeartSolidImageButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "Heart Solid Icon")
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
        addSubview(profileImageView)
        addSubview(userNameTimeStampStackView)
        addSubview(tweetLabel)
        addSubview(commentsStrokeIconImageView)
        addSubview(commentsCountLabel)
        addSubview(retweetsImageButton)
        addSubview(retweetsCountLabel)
        addSubview(likesHeartImageButton)
        addSubview(likesCountLabel)
        addSubview(shareStrokeImageButton)
    

        profileImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.topAnchor.constraint(equalTo: topAnchor, constant: 31).isActive = true

        userNameTimeStampStackView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 10).isActive = true
        userNameTimeStampStackView.topAnchor.constraint(equalTo: topAnchor, constant: 31).isActive = true

        tweetLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 83).isActive = true
        tweetLabel.heightAnchor.constraint(equalToConstant: 82).isActive = true
        tweetLabel.widthAnchor.constraint(equalToConstant: 312).isActive = true
        tweetLabel.topAnchor.constraint(equalTo: topAnchor, constant: 52).isActive = true
        
        commentsStrokeIconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 84.5).isActive = true
        commentsStrokeIconImageView.heightAnchor.constraint(equalToConstant: 14.51).isActive = true
        commentsStrokeIconImageView.widthAnchor.constraint(equalToConstant: 15).isActive = true
        commentsStrokeIconImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -43.49).isActive = true

        commentsCountLabel.leftAnchor.constraint(equalTo: commentsStrokeIconImageView.rightAnchor, constant: 3.5).isActive = true
        commentsCountLabel.centerYAnchor.constraint(equalTo: commentsStrokeIconImageView.centerYAnchor).isActive = true
        commentsCountLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -43.33).isActive = true
        
        retweetsImageButton.leftAnchor.constraint(equalTo: commentsCountLabel.rightAnchor, constant: 46.88).isActive = true
        retweetsImageButton.heightAnchor.constraint(equalToConstant: 12.97).isActive = true
        retweetsImageButton.widthAnchor.constraint(equalToConstant: 17.87).isActive = true
        retweetsImageButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -43.33).isActive = true

        retweetsCountLabel.leftAnchor.constraint(equalTo: retweetsImageButton.rightAnchor, constant: 2.25).isActive = true
        retweetsCountLabel.centerYAnchor.constraint(equalTo: retweetsImageButton.centerYAnchor).isActive = true
        retweetsCountLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -43.33).isActive = true
        
        likesHeartImageButton.leftAnchor.constraint(equalTo: retweetsCountLabel.rightAnchor, constant: 55).isActive = true
        likesHeartImageButton.heightAnchor.constraint(equalToConstant: 14.51).isActive = true
        likesHeartImageButton.widthAnchor.constraint(equalToConstant: 15).isActive = true
        likesHeartImageButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -43.33).isActive = true

        likesCountLabel.leftAnchor.constraint(equalTo: likesHeartImageButton.rightAnchor, constant: 3).isActive = true
        likesCountLabel.centerYAnchor.constraint(equalTo: likesHeartImageButton.centerYAnchor).isActive = true
        likesCountLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -43.33).isActive = true
        
        
        shareStrokeImageButton.leftAnchor.constraint(equalTo: likesCountLabel.rightAnchor, constant: 50).isActive = true
        shareStrokeImageButton.heightAnchor.constraint(equalToConstant: 14.80).isActive = true
        shareStrokeImageButton.widthAnchor.constraint(equalToConstant: 15.25).isActive = true
        shareStrokeImageButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -43.49).isActive = true
    
    }
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
        
    }
    
    
}

    
    
    
