//
//  ContactRow.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ContactRow: View {
    
    var contact: Contact
    
    var body: some View {
        HStack {
            Image(systemName: "person.badge.plus.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(6)
            Text("Hello World")
            Spacer()
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Contact(id: "1", name: "2"))
    }
}
