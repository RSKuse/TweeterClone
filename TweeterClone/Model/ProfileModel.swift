//
//  Profile.swift
//  TweeterClone
//
//  Created by Gugulethu Mhlanga on 2023/09/19.
//

import Foundation

struct ProfileModel: Codable {
    var name, username: String?
    var numberOfFollowers, numberOfFollowing, numberOfTweets: Int?
    var profileImageURL, profileBannerURL, profileDescription, profileLocation: String?
    var profileWebsite, profileJoinedDate: String?

    enum CodingKeys: String, CodingKey {
        case name, username
        case numberOfFollowers = "number_of_followers"
        case numberOfFollowing = "number_of_following"
        case numberOfTweets = "number_of_tweets"
        case profileImageURL = "profile_image_url"
        case profileBannerURL = "profile_banner_url"
        case profileDescription = "profile_description"
        case profileLocation = "profile_location"
        case profileWebsite = "profile_website"
        case profileJoinedDate = "profile_joined_date"
    }
}
