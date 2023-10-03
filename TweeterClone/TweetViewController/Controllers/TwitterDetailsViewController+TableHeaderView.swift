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
        tableHeaderView?.setNeedsLayout()
        tableHeaderView?.layoutIfNeeded()
        tableHeaderView?.frame = CGRect(origin: .zero,
                                       size: CGSize(width: view.frame.width, 
                                                    height: tableHeaderHeight))
        
    }
    
    func configureHeaderView() {
        tweetTableView.tableHeaderView = tableHeaderView
        
    }
}
