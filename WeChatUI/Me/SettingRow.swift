//
//  SettingRow.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct SettingRow: View {
    
    var icon: String
    
    var title: String
    
    @State var unread: Bool = false
    
    @State var unreadCount: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Image(icon)
                Text(title)
                
                if self.unread {
                    BadgeDot()
                }
                
                Spacer()
                
                
                if self.unreadCount > 0 {
                    BadgeView(number: self.unreadCount)
                }
                
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(UIColor.separator))
            }.padding()
        }
        .frame(height: 56)
        .background(Color(UIColor.systemBackground))
    }
}

struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingRow(icon: "icons_outlined_colorful_moment", title: "WeChat Pay")
    }
}
