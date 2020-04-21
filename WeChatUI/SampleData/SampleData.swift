//
//  SampleData.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation
import UIKit

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
    
    func randomMessage() -> String {
        return random(of: data.messages)
    }

    func contacts() -> [Contact] {
        return data.users.map { $0.toContact() }
    }
}

// MARK: - Moment Related Sample Data
extension SampleData {
    
    func moments() -> [Moment] {
        var moments: [Moment] = []
        for _ in 0 ..< 20 {
            let user = random(of: data.users)
            var moment = Moment(id: UUID().uuidString)
            moment.userId = user.identifier
            moment.username = user.name
            moment.content = randomMessage()

            let r = Int.random(in: 0 ... 4)
            if r == 0 {
                moment.body = randomMomentImage()
//                moment.comments = [randomMomentComment(of: user)]
//                moment.likes = [randomMomentLike(of: user)]
            } else if r == 1 {
                moment.body = randomMomentMultiImage()
            } else if r == 2 {
//                moment.body = randomMomentWebpages()
            } else {

            }
            moments.append(moment)
        }
        return moments
    }
    
    func randomMomentImage() -> MomentBody {
        let body = MomentImage(id: UUID().uuidString, size: CGSize(width: 270, height: 400), image: UIImage(named: "2"))
        return .image(body)
    }
    
    func randomMomentMultiImage() -> MomentBody {
        var images: [MomentImage] = []
        for _ in 0 ..< 9 {
            let image = MomentImage(id: UUID().uuidString, size: CGSize(width: 270, height: 400), image: UIImage(named: "2"))
            images.append(image)
        }
        let multiImages = MomentMultiImage(images: images)
        return MomentBody.multi(multiImages)
    }
}

// MARK: - ChatRoom Related Sample Data
extension SampleData {
    
    func loadMessages(with session: Session, count: Int = 20) -> [Message] {
            
            var messages: [Message] = []
            let myID = "10001"
            let now = Int(Date().timeIntervalSince1970)
            let past = Int(Date().timeIntervalSince1970) - 10 * 24 * 60 * 60
            for index in 0 ..< count {
                let randomTime = Int(arc4random_uniform(UInt32(now - past))) + past
                let msg = Message(id: UUID().uuidString)
                msg.chatId = session.id
                msg.senderId = index % 2 == 0 ? session.id: myID
                msg.time = randomTime
                let r = Int.random(in: 0 ..< 5)
                switch r {
                case 0:
                    msg.content = randomTextMessage()
                case 1:
                    msg.content = randomImageMessage()
                case 2:
                    msg.content = randomVoiceMessage()
    //            case 3:
    //                msg.content = randomEmoticonMessage()
    //            case 4:
    //                msg.content = randomVideoMessage()
                default:
                    msg.content = randomTextMessage()
                }
                messages.append(msg)
            }
            messages.sort(by: { $0.time < $1.time })
            formatMessageTime(messages)
            return messages
        }
        
        private func formatMessageTime(_ messages: [Message]) {
            
            guard var time = messages.first?.time else {
                return
            }
            
            messages.first?.displayedTimeText = formatTimestamp(TimeInterval(time))
            for message in messages {
                if message.time - time > 300 {
                    time = message.time
                    message.displayedTimeText = formatTimestamp(TimeInterval(time))
                } else {
                    message.displayedTimeText = nil
                }
            }
        }
    
    private func randomTextMessage() -> MessageContent {
        let message = randomMessage()
        return .text(message)
    }
    
    private func randomImageMessage() -> MessageContent {
        //let image = random(of: data.images)
        //let msg = ImageMessage(url: image.url, size: image.size.value)
        let msg = ImageMessage(image: "2", aspectRatio: 27.0/40)
        return .image(msg)
    }
    
    private func randomVoiceMessage() -> MessageContent {
        let msg = VoiceMessage(duration: 4)
        return .voice(msg)
    }
    
    // https://kf.qq.com/faq/161224e2i22a161224qqYfAR.html
    private func formatTimestamp(_ timestamp: TimeInterval) -> String? {
        var date = Date(timeIntervalSince1970: timestamp)
        let now = Date()
        let formatter = DateFormatter()
        let nowTimestamp = now.timeIntervalSince1970
        let day: TimeInterval = 24 * 60 * 60
        let intervals = nowTimestamp - timestamp
        if timestamp >= nowTimestamp {
            formatter.dateFormat = "HH:mm"
            date = now
        } else if intervals >= 7 * day {
            formatter.dateFormat = "yyyy-MM-dd HH:mm"
        } else if intervals > day {
            formatter.dateFormat = "EEEE HH:mm"
        } else {
            formatter.dateFormat = "HH:mm"
        }
        return formatter.string(from: date)
    }
}

// MAR: - Helper
extension SampleData {
    func random<T>(of list: [T]) -> T {
        let count = list.count
        let index = Int(arc4random_uniform(UInt32(count)))
        return list[index]
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
