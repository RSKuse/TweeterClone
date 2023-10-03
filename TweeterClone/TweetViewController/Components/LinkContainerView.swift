//  LinkContainerView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/28.
//

import Foundation
import UIKit

class LinkContainerView: UIView {
    
    lazy var linkImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Rectangle")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 2
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var linkDescriptionLabel : UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        label.attributedText = NSMutableAttributedString(string: "The Best Free Icon Packs Everyone Must Download in 2020 | GraphicM...", attributes: [NSAttributedString.Key.kern: -0.3])
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var linkLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.attributedText = NSMutableAttributedString(string: "graphicmama.com", attributes: [NSAttributedString.Key.kern: -0.3])
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var linkStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [linkDescriptionLabel, linkLabel])
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        layer.masksToBounds = true
        layer.borderWidth = 0.33
        layer.cornerRadius = 10
        layer.borderColor = UIColor(red: 0.808, green: 0.835, blue: 0.863, alpha: 1).cgColor
        setupUI()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(linkImageView)
        addSubview(linkStackView)

        linkImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        linkImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        linkImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        linkImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true

        linkStackView.leftAnchor.constraint(equalTo: linkImageView.rightAnchor,
                                            constant: 10).isActive = true
        linkStackView.topAnchor.constraint(equalTo: topAnchor,
                                           constant: 6).isActive = true
        linkStackView.bottomAnchor.constraint(equalTo: bottomAnchor,
                                           constant: -6).isActive = true
        linkStackView.rightAnchor.constraint(equalTo: rightAnchor,
                                             constant: -12).isActive = true
        
  
        
    }

}




