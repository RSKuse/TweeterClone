//
//  TweetProfileUserNameView.swift
//  TweeterClone
//
//  Created by Gugulethu Mhlanga on 2023/10/04.
//

import Foundation
import UIKit

class TweetProfileUserNameView: UIView {
    
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
        let stackView = UIStackView(arrangedSubviews: [userNameLabel, nameLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var profileImageUserNameStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [profileImageView, userNameStackView])
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
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
        addSubview(profileImageUserNameStackView)
        
        profileImageView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 55).isActive = true
        
        profileImageUserNameStackView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        profileImageUserNameStackView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        profileImageUserNameStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
}
