//
//  TweetCellButtonView.swift
//  TweeterClone
//
//  Created by Gugulethu Mhlanga on 2023/09/11.
//

import Foundation
import UIKit

class TweetCellButtonView: UIView {
    
    lazy var buttonImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var buttonTextLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [buttonImageView, buttonTextLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(buttonStackView)
        
        buttonStackView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        buttonStackView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        buttonStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        buttonImageView.heightAnchor.constraint(equalToConstant: 18).isActive = true
        buttonImageView.widthAnchor.constraint(equalToConstant: 18).isActive = true
    }
    
}
