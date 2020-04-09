//
//  SampleData.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation

struct SampleData {
    
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
            return session
        }
    }()
    
    func random<T>(of list: [T]) -> T {
        let count = list.count
        let index = Int(arc4random_uniform(UInt32(count)))
        return list[index]
    }
    
    func randomMessage() -> String {
        return random(of: data.messages)
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
    
}
