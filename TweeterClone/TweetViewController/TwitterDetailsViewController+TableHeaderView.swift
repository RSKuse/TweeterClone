//
//  TwitterDetailsViewController+TableHeaderView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/24.
//

import Foundation
import UIKit

extension TwitterDetailsViewController {

    func sizeHeaderToFit() {
        tweetDetailView.setNeedsLayout()
        tweetDetailView.layoutIfNeeded()
        tweetDetailView.frame = CGRect(origin: .zero, size: CGSize(width: view.frame.width, height: 340))
        
    }
    
    func configureHeaderView() {
        //tweetDetailView.frame = CGRect(origin: .zero, size: CGSize(width: view.frame.width, height: 340))
        tweetTableView.tableHeaderView = tweetDetailView
        
    }
}
