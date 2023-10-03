//
//  TwitterViewController+TableHeaderView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/10/03.
//

import Foundation
import UIKit

extension TwitterViewController {

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
