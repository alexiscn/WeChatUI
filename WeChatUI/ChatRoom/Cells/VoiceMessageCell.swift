//
//  VoiceMessageCell.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct VoiceMessageCell: View {
    
    var voice: VoiceMessage
    
    var isOutgoing: Bool
    
    var backgroundImage: String {
        return isOutgoing ? "ChatRoom_Bubble_Text_Sender_Green_57x40_": "ChatRoom_Bubble_Text_Receiver_White_57x40_"
    }
    
    var body: some View {
        ZStack {
            if isOutgoing {
                HStack {
                    if self.voice.unread {
                        BadgeDot()
                    }
                    HStack {
                        Text(voice.formattedDuration)
                        Image("ChatRoom_Bubble_Voice_Sender_24x24_")
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 9)
                    .background(
                        Image("ChatRoom_Bubble_Text_Sender_Green_57x40_")
                    )
                }
            } else {
                HStack {
                    HStack {
                        Image("ChatRoom_Bubble_Voice_Receiver_24x24_")
                        Text(voice.formattedDuration)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 9)
                    .background(
                        Image("ChatRoom_Bubble_Text_Receiver_White_57x40_")
                    )
                    if self.voice.unread {
                        BadgeDot()
                    }
                }
            }
        }
    }
}

struct VoiceMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        VoiceMessageCell(voice: VoiceMessage(duration: 4),isOutgoing: true)
    }
}
