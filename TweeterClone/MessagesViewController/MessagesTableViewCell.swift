//
//  MessagesTableViewCell.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/12.
//

import Foundation
import UIKit

class MessagesTableViewCell: UITableViewCell {
    
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
        label.text = "karennne"
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
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
    
    lazy var timeStampLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.textAlignment = .right
        label.attributedText = NSMutableAttributedString(string: "12/2/19", attributes: [NSAttributedString.Key.kern: -0.3])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userNameTimeStampStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, userNameLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.numberOfLines = 0
        label.attributedText = NSMutableAttributedString(string: "You: I would greatly appreciate if you could retweet this if you think its worthy :)", attributes: [NSAttributedString.Key.kern: -0.3])
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        setupUI()

    }
    func setupUI() {
        contentView.addSubview(profileImageView)
        contentView.addSubview(userNameTimeStampStackView)
        contentView.addSubview(messageLabel)
        contentView.addSubview(timeStampLabel)

        profileImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true

        userNameTimeStampStackView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 10).isActive = true
        userNameTimeStampStackView.topAnchor.constraint(equalTo: profileImageView.topAnchor).isActive = true

        messageLabel.leftAnchor.constraint(equalTo: userNameTimeStampStackView.leftAnchor).isActive = true
        messageLabel.topAnchor.constraint(equalTo: userNameTimeStampStackView.bottomAnchor, constant: -2).isActive = true
        messageLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        messageLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12).isActive = true
   
        timeStampLabel.centerYAnchor.constraint(equalTo: userNameTimeStampStackView.centerYAnchor).isActive = true
        timeStampLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        
    }
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
        
    }
    
    
}

    
    
    
