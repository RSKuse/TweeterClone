//
//  ReplyTextFieldContainerView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/18.
//

import Foundation
import UIKit

class ReplyTextFieldContainerView: UIView, UITextFieldDelegate {
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Martha Craig")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 17.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var replyTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Tweet your reply"
        textField.textAlignment = .left
        textField.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        textField.backgroundColor = UIColor(red: 0.906, green: 0.925, blue: 0.941, alpha: 1)
        textField.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        textField.borderStyle = .none
        textField.layer.cornerRadius = 17.5
        textField.returnKeyType = .done
        textField.layer.masksToBounds = true
        textField.delegate = self
        textField.translatesAutoresizingMaskIntoConstraints = false
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: textField.frame.height))
        textField.leftView = leftPaddingView
        textField.leftViewMode = .always
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupUI () {
        
        addSubview(profileImageView)
        addSubview(replyTextField)
        
        
        profileImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 35).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 35).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        replyTextField.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        replyTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        replyTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        replyTextField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
}
