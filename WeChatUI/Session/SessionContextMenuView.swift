//
//  SessionContextMenuView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct SessionContextMenuView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button(action: {
                
            }) {
                HStack {
                    Image("icons_filled_chats_white")
                        .renderingMode(.template)
                        .foregroundColor(.white)
                    Text("New Chat").foregroundColor(.white)
                }
            }.frame(height: 40)
            
            SessionContextLine()
            
            Button(action: {
                
            }) {
                HStack {
                    Image("icons_filled_add-friends_white")
                        .renderingMode(.template)
                        .foregroundColor(.white)
                    Text("Add Contacts").foregroundColor(.white)
                }
            }.frame(height: 40)

            SessionContextLine()
            
            Button(action: {
                
            }) {
                HStack {
                    Image("icons_filled_scan_white").renderingMode(.template).foregroundColor(.white)
                    Text("Scan").foregroundColor(.white)
                }
            }.frame(height: 40)
            
            SessionContextLine()
            
            Button(action: {
                
            }) {
                HStack {
                    Image("icons_filled_pay_white")
                        .renderingMode(.template)
                        .foregroundColor(.white)
                    Text("Money").foregroundColor(.white)
                }
            }.frame(height: 40)
        }
        .padding([.top, .leading, .bottom])
        .frame(width: 200)
        .background(Image("MoreFunctionFrame_58x50_"))
    }
}

struct SessionContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SessionContextMenuView()
    }
}
