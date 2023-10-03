//
//  TweetTimeStampView.swift
//  TweeterClone
//
//  Created by Gugulethu Mhlanga on 2023/10/04.
//

import Foundation
import UIKit

class TweetTimeStampView: UIView {
    
    lazy var timeStampLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = UIColor(red: 0.408, green: 0.463, blue: 0.518, alpha: 1)
        label.attributedText = NSMutableAttributedString(string: "09:28 · 2/21/20 · Twitter Web App", attributes: [NSAttributedString.Key.kern: -0.3])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var bottomLineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.808, green: 0.835, blue: 0.863, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        addSubview(timeStampLabel)
        addSubview(bottomLineView)
        
        timeStampLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        timeStampLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        timeStampLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
        bottomLineView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        bottomLineView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bottomLineView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        bottomLineView.heightAnchor.constraint(equalToConstant: 0.8).isActive = true
        
    }
}
