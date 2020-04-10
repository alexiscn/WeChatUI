//
//  AvatarView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct AvatarView: View {
    
    var name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: 40, height: 40)
            .cornerRadius(6)
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(name: "2")
    }
}
