//
//  NotificationViewController+TableView.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/15.
//

import Foundation
import UIKit

extension NotificationViewController {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let notificationCell = tableView.dequeueReusableCell(withIdentifier: "NotificationTableViewCellID", for: indexPath) as! NotificationTableViewCell
        return notificationCell
    }
    
}
