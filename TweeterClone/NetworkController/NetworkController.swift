//
//  TweetsDatabase.swift
//  TweeterClone
//
//  Created by Reuben Simphiwe Kuse on 2023/09/08.
//

import Foundation
import UIKit

// In the future, it will be responsible for making api calls. Essentially what postman does.
class NetworkController {
    
    func fetchDataFromInternet() {
        // use a link and a method :POST to fetch the data
    }
    
    
    
    
    
    // 1. Fetch Json Formatted Data and convert to Swift Data Type
    func fetchJsonFileWithName() throws -> Data {
        let path = Bundle.main.path(forResource: "Tweets", ofType: "json")
        return try Data(contentsOf: URL(fileURLWithPath: path!), options: .mappedIfSafe)
    }
    
    // 2. Convert Data (struct) to TweetModel(struct)
    func generateTweets() -> [TweetModel]? {
        do {
            let tweetData = try fetchJsonFileWithName()
            let tweetsResponse = try JSONDecoder().decode([TweetModel].self, from: tweetData)
            return tweetsResponse
        } catch {
            return nil
        }
    }

}

/*
class TweetsDatabase {
    var tweetsArray: [Tweet] = [Tweet(userName: "Martha Craig",
                                      handleName: "@craig_love",
                                      timeStamp: "12h",
                                      tweetText: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou",
                                      commentsCount: 28,
                                      retweetsCount: 5,
                                      likesCount: 21,
                                      profileImage: UIImage(named: "Martha Craig")!,
                                      commentsIconImage: UIImage(named: "Comment Stroke Icon")!,
                                      retweetsIconImage: UIImage(named: "Retweet stroke icon")!,
                                      likesIconImage: UIImage(named: "Heart stroke icon")!),
                                
                                Tweet(userName: "Maximmilian",
                                      handleName: "@maxjacobson",
                                      timeStamp: "3h",
                                      tweetText: "Y’all ready for this next post?",
                                      commentsCount: 46,
                                      retweetsCount: 18,
                                      likesCount: 363,
                                      profileImage: UIImage(named: "Maximmilian")!,
                                      commentsIconImage: UIImage(named: "Comment Stroke Icon")!,
                                      retweetsIconImage: UIImage(named: "Retweet stroke icon")!,
                                      likesIconImage: UIImage(named: "Heart stroke icon")!),
                                
                                Tweet(userName: "Tabitha Potter",
                                      handleName: "@mis_potter",
                                      timeStamp: "14",
                                      tweetText: "Kobe’s passing is really sticking w/ me in a way I didn’t expect.He was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident. But the end can happen for anyone at any time, & I can’t help but think of anything else lately.",
                                      commentsCount: 7,
                                      retweetsCount: 1,
                                      likesCount: 11,
                                      profileImage: UIImage(named: "Tabitha Potter")!,
                                      commentsIconImage: UIImage(named: "Comment Stroke Icon")!,
                                      retweetsIconImage: UIImage(named: "Retweet stroke icon")!,
                                      likesIconImage: UIImage(named: "Heart stroke icon")!),
                                
                                Tweet(userName: "karennne",
                                      handleName: "@karennne",
                                      timeStamp: "10h",
                                      tweetText: "Name a show where the lead character is the worst character on the show I’ll get Sabrina Spellman",
                                      commentsCount: 1906,
                                      retweetsCount: 1246,
                                      likesCount: 7461,
                                      profileImage: UIImage(named: "karennne")!,
                                      commentsIconImage: UIImage(named: "Comment Stroke Icon")!,
                                      retweetsIconImage: UIImage(named: "Retweet stroke icon")!,
                                      likesIconImage: UIImage(named: "Heart stroke icon")!)]
    
}
*/
    
    
    





