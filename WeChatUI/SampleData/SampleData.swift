//
//  SampleData.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation

class SampleData {
    
    static var shared = SampleData()
    
    private let data: MockData
    
    private init() {
        let url = Bundle.main.url(forResource: "SampleData", withExtension: "json")!
        let mockData = try! Data(contentsOf: url)
        self.data = try! JSONDecoder().decode(MockData.self, from: mockData)
    }
    
    lazy var sessions: [Session] = {
        return data.users.map {user in
            var session = Session(id: user.identifier, name: user.name)
            session.content = randomMessage()
            session.avatar = user.avatar
            if user.identifier == "20001" {
                session.unreadCount = 5
            }
            if user.identifier == "20002" {
                session.unreadCount = 2
                session.showUnreadAsRedDot = true
            }
            session.updatedTime = "12:50"
            return session
        }
    }()
    
    lazy var messages: [Message] = {
        var list: [Message] = []
        let myID = "10001"
        let userID = "10002"
        let now = Int(Date().timeIntervalSince1970)
        let past = 1560493108
        for index in 0 ..< 30 {
            let randomTime = Int(arc4random_uniform(UInt32(now - past))) + past
            var msg = Message(id: String(index))
            msg.chatId = userID
            msg.senderId = index % 2 == 0 ? userID: myID
            msg.time = randomTime
            msg.content = .text("Hello World")
            list.append(msg)
        }
        list.sort(by: { $0.time < $1.time })
        return list
    }()
    
    func random<T>(of list: [T]) -> T {
        let count = list.count
        let index = Int(arc4random_uniform(UInt32(count)))
        return list[index]
    }
    
    func randomMessage() -> String {
        return random(of: data.messages)
    }
    
    func loadMessages(with session: Session) -> [Message] {
        // TODO
        return self.messages
    }
    
    func contacts() -> [Contact] {
        return data.users.map { $0.toContact() }
    }
}

struct MockData: Codable {
    
    var users: [User]
    
    var messages: [String]
}

enum Gender: String, Codable {
    case male = "M"
    case female = "F"
}

struct User: Codable {
    
    let identifier: String
    
    let name: String
    
    let name_en: String
    
    let family: String
    
    let avatar: URL?
    
    let gender: Gender
    
    let country: String
    
    let wxid: String
 
    func toContact() -> Contact {
        let contact = Contact(id: identifier, name: name, avatar: avatar)
        return contact
    }
}
