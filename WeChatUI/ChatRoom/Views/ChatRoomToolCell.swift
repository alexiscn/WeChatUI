//
//  ChatRoomToolCell.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/13.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ChatRoomToolCell: View {
    
    var tool: ChatRoomTool
    
    var body: some View {
        VStack {
            Image(tool.icon)
                .background(Image("ChatRomm_ToolPanel_Icon_Buttons_64x64_"))
            Text(tool.title)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }.padding()
    }
}

struct ChatRoomToolCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomToolCell(tool: .album).background(Color.green)
    }
}
