//
//  Session.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation

struct Session: Hashable, Codable, Identifiable {
    
    var id: String
    
    var name: String
    
    var content: String = ""
    
    var avatar: URL? = nil
    
    var updatedTime: String = ""
    
    var unreadCount: Int = 0
    
    var showUnreadAsRedDot: Bool = false
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}
