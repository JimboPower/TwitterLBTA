//
//  HomeDatasource.swift
//  TwitterLBTA
//
//  Created by Edoardo de Cal on 08/05/2019.
//  Copyright © 2019 Edoardo de Cal. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let edoUser = User(name: "Edoardo", username: "@edoardo", bioText: "iPhone, iPad, iOS Programming Commiunity. Join us to learn Swift, Objective-C", profileImage: #imageLiteral(resourceName: "Foto Edoardo de Cal"))
        let giuliaUser = User(name: "Brian", username: "@letsbuildthatapp", bioText: "I am really good at cooking guys ahhha", profileImage:  #imageLiteral(resourceName: "profile_image"))
        let markUser = User(name: "Mark", username: "@zuck", bioText: "I am a bilionare guy lol, I am a bilionare guy lol, I am a bilionare guy lol, I am a bilionare guy lol, I am a bilionare guy lol", profileImage: #imageLiteral(resourceName: "ray_profile_image"))
        return [edoUser, giuliaUser, markUser]
    }()
    
    let tweets = ["Tweet1", "Tweet2"]
    
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        
        if section == 1 {
            return tweets.count
        }
        return users.count
        
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
}
