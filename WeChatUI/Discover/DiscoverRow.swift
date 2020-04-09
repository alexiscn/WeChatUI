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
    
    var body: some View {
        VStack {
            HStack {
                Image(discover.icon)
                Text(discover.title)
                BadgeDot().opacity(self.unread ? 1: 0)
                Spacer()
                Image(systemName: "chevron.right").foregroundColor(.gray)
            }.padding()
        }
        .frame(height: 56)
        .background(Color(UIColor.systemBackground))
    }
    
}

struct DiscoverRow_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverRow(discover: .moment)
    }
}
