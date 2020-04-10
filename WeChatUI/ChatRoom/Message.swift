//
//  Message.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation

struct Message: Codable, Identifiable {
    
    static func == (lhs: Message, rhs: Message) -> Bool {
        return lhs.id == rhs.id
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case type
        case chatId
        case senderId
        case time
    }
    
    var id: String
    
    var type: Int = 0
    
    var chatId: String = ""
    
    var senderId: String = ""
    
    var content: MessageContent = .none
    
    var time: Int = 0
    
    var isOutgoing: Bool { return senderId != chatId }
    
    init(id: String) {
        self.id = id
    }
}

enum MessageContent {
    case none
    case text(String)
}
