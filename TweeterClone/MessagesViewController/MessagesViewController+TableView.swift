//
//  MessagesViewController+TableView.swift
//  TweeterClone
//
//  Created by Gugulethu Mhlanga on 2023/09/13.
//

import Foundation
import UIKit

// All TableView related functions now live here.
extension MessagesViewController {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let messageCell = tableView.dequeueReusableCell(withIdentifier: "MessagesTableViewCellID", for: indexPath) as! MessagesTableViewCell
        return messageCell
    }
    
}
