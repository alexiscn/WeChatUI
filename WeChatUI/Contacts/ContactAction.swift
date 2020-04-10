//
//  ContactAction.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation

enum ContactAction: Int, Hashable, CaseIterable {
    case newFriends
    case groupChats
    case tags
    case official
    
    var title: String {
        switch self {
        case .newFriends: return "New Friends"
        case .groupChats: return "Group Chats"
        case .tags: return "Tags"
        case .official: return "Official Accounts"
        }
    }
    
    var icon: String {
        switch self {
        case .newFriends: return "contacts_new_friends_36x36_"
        case .groupChats: return "contacts_group_chat_36x36_"
        case .tags: return "contacts_tags_36x36_"
        case .official: return "contacts_official_36x36_"
        }
    }
}
