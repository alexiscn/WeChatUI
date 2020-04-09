//
//  SettingTextRow.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct SettingTextRow: View {
    
    var title: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                Spacer()
                Image(systemName: "chevron.right").foregroundColor(.gray)
            }.padding()
        }
        .frame(height: 56)
        .background(Color(UIColor.systemBackground))
    }
}

struct SettingTextRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingTextRow(title: "Language")
    }
}
