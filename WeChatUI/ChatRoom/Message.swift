//
//  Message.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit

class Message: Codable, Identifiable {
    
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

    var displayedTimeText: String? = nil
    
    var isOutgoing: Bool { return senderId != chatId }
    
    init(id: String) {
        self.id = id
    }
}

enum MessageContent {
    case none
    case text(String)
    case image(ImageMessage)
    case video(VideoMessage)
    case voice(VoiceMessage)
    case location(LocationMessage)
}


struct ImageMessage {
    
    var image: String
    
    var aspectRatio: CGFloat = 1.0
}


struct VideoMessage {
    
    var size: CGSize
    
    var duration: TimeInterval
    
}

struct VoiceMessage {
    
    var duration: Int
    
    var unread = false
    
    var formattedDuration: String {
        return String(format: "%d\"", duration)
    }
    
}

struct URLMessage {
    
}


struct LocationMessage {
    
    var coordinate: CLLocationCoordinate2D
    
    var thumb: UIImage? = nil
    
    var title: String? = nil
    
    var subTitle: String? = nil
}
