//
//  BadgeView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct BadgeView: View {
    
    var size: Float = 7.0
    
    var body: some View {
        Circle().foregroundColor(.red)
    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
