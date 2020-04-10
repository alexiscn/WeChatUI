//
//  ChatMessageRow.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct ChatMessageRow: View {
    
    var message: Message
    
    var session: Session
    
    var body: some View {
        
        VStack {
            if message.displayedTimeText != nil {
                Text(message.displayedTimeText!)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack(alignment: .top) {
                
                if !message.isOutgoing {
                    KFImage(session.avatar)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(6)
                } else {
                    Spacer()
                }
                contentView()
                if message.isOutgoing {
                    AvatarView(name: "swiftui")
                } else {
                    Spacer()
                }
            }
        }
        
    }
    
    func contentView() -> AnyView {
        
        switch message.content {
        case .text(let text):
            return AnyView(TextMessageCell(text: text, isOutgoing: message.isOutgoing))
        case .image(let image):
            return AnyView(ImageMessageCell(image: image))
        case .video(let video):
            return AnyView(VideoMessageCell(video: video))
        default:
            return AnyView(EmptyView())
        }
    }
}

struct ChatMessageRow_Previews: PreviewProvider {
    
    private static let msg = SampleData.shared.messages.first!
    
    private static let session = SampleData.shared.sessions.first!
    
    static var previews: some View {
        ChatMessageRow(message: msg, session: session)
    }
}
