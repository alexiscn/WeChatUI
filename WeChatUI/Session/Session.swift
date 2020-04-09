//
//  Session.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation

struct Session: Hashable, Codable {
    
    var sessionId: String
    
    var name: String
    
    var content: String
    
    var avatar: String
    
    var updatedTime: String
}
