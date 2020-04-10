//
//  ContactActionRow.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ContactActionRow: View {
    
    var action: ContactAction
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(action.icon)
                    .cornerRadius(4)
                Text(action.title)
                Spacer()
                Image(systemName: "chevron.right").foregroundColor(.gray)
            }.padding()
        }
        .frame(height: 56)
        .background(Color(UIColor.systemBackground))
    }
}

struct ContactActionRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactActionRow(action: .newFriends)
    }
}
