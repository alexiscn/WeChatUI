//
//  BadgeDot.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct BadgeDot: View {
    
    var size: CGFloat = 10
    
    var body: some View {
        Circle()
            .foregroundColor(.red)
            .frame(width: size, height: size)
    }
}

struct BadgeDot_Previews: PreviewProvider {
    static var previews: some View {
        BadgeDot()
    }
}
