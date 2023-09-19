import Foundation
import UIKit

struct TweetModel: Codable {
    var tweet, date: String?
    var numberOfLikes, numberOfRetweets, numberOfReplies, numberOfViews: Int?
    var profile: ProfileModel?
    var replies: [TweetModel]?

    enum CodingKeys: String, CodingKey {
        case tweet, date
        case numberOfLikes = "number_of_likes"
        case numberOfRetweets = "number_of_retweets"
        case numberOfReplies = "number_of_replies"
        case numberOfViews = "number_of_views"
        case profile, replies
    }
}
