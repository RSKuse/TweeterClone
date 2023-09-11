//
//  TweetsModelStruct.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/08.
//

import Foundation
import UIKit

struct Tweet {
    let userName: String
    let handleName: String
    let timeStamp: String
    let tweetText: String
    let commentsCount: Int
    let retweetsCount: Int
    let likesCount: Int
    let profileImage: UIImage
    let commentsIconImage: UIImage
    let retweetsIconImage: UIImage
    let likesIconImage: UIImage
}
