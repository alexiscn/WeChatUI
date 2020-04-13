//
//  ChatRoomToolBoard.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/13.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ChatRoomToolBoard: View {
    
    @State var currentPage = 0
    
    var body: some View {
        
        ZStack {
            // TODO
            PageControl(numberOfPages: 2, currentPage: $currentPage)
        }.background(Color.black)
    }
}

struct ChatRoomToolBoard_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomToolBoard()
    }
}
