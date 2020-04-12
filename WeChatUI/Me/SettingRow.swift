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
    
    var body: some View {
        VStack {
            HStack {
                Image(icon)
                Text(title)
                BadgeDot().opacity(self.unread ? 1: 0)
                Spacer()
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
