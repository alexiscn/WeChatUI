//
//  ChatInputView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ChatInputView: View {
    
    @State var text: String = ""
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
                    
                }) {
                    Image("chatroom_bar_voice")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(Color(.label))
                        .frame(width: 24, height: 24)
                }.padding(.leading)
            
                TextField("Start to talk", text: $text)
                    .padding(.all, 10)
                    .background(Color(UIColor.systemBackground))
                    .cornerRadius(6)
                
                Button(action: {
                    
                }) {
                    Image("chatroom_bar_sticker")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(Color(.label))
                        .frame(width: 24, height: 24)
                }
            
                Button(action: {
                    
                }) {
                    Image("chatroom_bar_more")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(Color(.label))
                        .frame(width: 24, height: 24)
                }
                .padding(.trailing)
            
            }.padding(.vertical, 7)
        }.background(Color(UIColor.systemGroupedBackground))
            
            
        
        
        
    }
}

struct ChatInputView_Previews: PreviewProvider {
    static var previews: some View {
        ChatInputView()
    }
}
