//
//  NotificationTableViewCell.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/15.
//

import Foundation
import UIKit

class NotificationTableViewCell: UITableViewCell {
    
    lazy var starIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "icon_star")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Round")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 18.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var subjectNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.attributedText = NSMutableAttributedString(string: "In case you missed Saad Drusteer’s Tweet ", attributes: [NSAttributedString.Key.kern: -0.3])
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var notificationLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.15
        label.numberOfLines = 0
        label.attributedText = NSMutableAttributedString(string: "🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security.\n\nsmashingdrusteer.com/2020/01/migrate...", attributes: [NSAttributedString.Key.kern: -0.3, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        contentView.addSubview(starIconImageView)
        contentView.addSubview(profileImageView)
        contentView.addSubview(subjectNameLabel)
        contentView.addSubview(notificationLabel)
        contentView.addSubview(downArrowIconImageButton)

        starIconImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50).isActive = true
        starIconImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        starIconImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        starIconImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12).isActive = true
        
        profileImageView.leftAnchor.constraint(equalTo: starIconImageView.rightAnchor, constant: 8).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 37).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 37).isActive = true
        profileImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12).isActive = true
       
        subjectNameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        subjectNameLabel.leftAnchor.constraint(equalTo: profileImageView.leftAnchor).isActive = true
        subjectNameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8).isActive = true

        notificationLabel.leftAnchor.constraint(equalTo: subjectNameLabel.leftAnchor).isActive = true
        notificationLabel.topAnchor.constraint(equalTo: subjectNameLabel.bottomAnchor, constant: 6).isActive = true
        notificationLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        notificationLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,
                                           constant: -5).isActive = true
       
        downArrowIconImageButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12).isActive = true
        downArrowIconImageButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        
    }
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
        
    }
    
    
}

    
    
    
