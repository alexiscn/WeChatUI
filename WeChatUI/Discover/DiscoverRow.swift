//
//  DiscoverRow.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct DiscoverRow: View {
    
    var discover: Discover
    
    @State var unread: Bool = false
    
    @State var unreadCount: Int = 0
    
    var body: some View {
        SettingRow(icon: discover.icon,
                   title: discover.title,
                   unread: unread,
                   unreadCount: unreadCount)
    }
    
}

struct DiscoverRow_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverRow(discover: .moment)
    }
}
