//
//  BadgeView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct BadgeView: View {
    
    var number: Int = 0
    
    private var computedText: String {
        if number <= 0 {
            return ""
        }
        if number > 99 {
            return "99+"
        }
        return String(number)
    }
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.red)
                .frame(width: 18, height: 18)
            Text(computedText)
                .font(.system(size: 11))
                .foregroundColor(.white)
        }
    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView(number: 4)
    }
}
