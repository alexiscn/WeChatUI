//
//  ChatMessageRow.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ChatMessageRow: View {
    
    var message: Message
    
    var body: some View {
        
        HStack(alignment: .top) {
            
            if !message.isOutgoing {
                Image("icons_filled_me")
            } else {
                Spacer()
            }
            contentView()
            if message.isOutgoing {
                Image("icons_filled_me")
            } else {
                Spacer()
            }
        }
    }
    
    func contentView() -> AnyView {
        
        switch message.content {
        case .text(let text):
            return AnyView(TextMessageCell(text: text, isOutgoing: message.isOutgoing))
        default:
            return AnyView(EmptyView())
        }
    }
}

struct ChatMessageRow_Previews: PreviewProvider {
    
    private static let msg = SampleData.shared.messages.first!
    
    static var previews: some View {
        ChatMessageRow(message: msg)
    }
}
