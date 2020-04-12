//
//  ChatRoomView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ChatRoomView: View {
    
    var session: Session
    
    @ObservedObject private var keyboard = KeyboardObserver()
    
    @State var messages: [Message] = []
    
    init(session: Session) {
        self.session = session
    }
    
    var body: some View {
        
        VStack {
            List(messages) { msg in
                ChatMessageRow(message: msg, session: self.session)
            }
            ChatInputView()
        }
        .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
        .onAppear {
            self.messages = SampleData.shared.loadMessages(with: self.session)
        }
        .padding(.bottom, keyboard.height)
        .animation(.easeIn(duration: 0.25))
        .navigationBarTitle(session.name)
        .navigationBarItems(trailing: Button(action: {
            
        }) {
            Image(systemName: "ellipsis")
        })
    }
}

struct ChatRoomView_Previews: PreviewProvider {
    
    private static let session = SampleData.shared.sessions.first!
    
    static var previews: some View {
        ChatRoomView(session: session)
    }
}
