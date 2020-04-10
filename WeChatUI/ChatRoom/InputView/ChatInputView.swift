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
        
        ZStack {
            TextField("Start to talk", text: $text)
                .padding()
        }.background(Color.green)
        
    }
}

struct ChatInputView_Previews: PreviewProvider {
    static var previews: some View {
        ChatInputView()
    }
}
