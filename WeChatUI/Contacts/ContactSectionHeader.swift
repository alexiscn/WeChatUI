//
//  ContactSectionHeader.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ContactSectionHeader: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 14))
            .foregroundColor(.secondary)
        
    }
}

struct ContactSectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        ContactSectionHeader(title: "A")
    }
}
