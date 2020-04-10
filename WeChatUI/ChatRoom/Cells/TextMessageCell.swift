//
//  TextMessageCell.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct TextMessageCell: View {
    
    var text: String
    
    var isOutgoing: Bool
    
    var backgroundImage: String {
        return isOutgoing ? "ChatRoom_Bubble_Text_Sender_Green_57x40_": "ChatRoom_Bubble_Text_Receiver_White_57x40_"
    }
    
    var body: some View {
        
        ZStack {
            Text(text).padding()
        }
        .background(
            Image(backgroundImage)
        )
    }
}

struct TextMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        TextMessageCell(text: "Hello world", isOutgoing: false)
    }
}
