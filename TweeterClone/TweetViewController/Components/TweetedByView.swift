//
//  TweetedByView.swift
//  TweeterClone
//
//  Created by Gugulethu Mhlanga on 2023/10/04.
//

import Foundation
import UIKit

class TweetedByView: UIView {
    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(retweetStackView)
        
        retweetImageButton.heightAnchor.constraint(equalToConstant: 14).isActive = true
        retweetImageButton.widthAnchor.constraint(equalToConstant: 14).isActive = true
        
        retweetStackView.leftAnchor.constraint(equalTo: leftAnchor,
                                               constant: 60).isActive = true
        retweetStackView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        retweetStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
}
