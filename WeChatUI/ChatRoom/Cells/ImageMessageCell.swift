//
//  ImageMessageCell.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ImageMessageCell: View {
    
    var maxSize = Constants.screenWidth * 0.5
    
    var body: some View {
        Image("2")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: maxSize, maxHeight: maxSize)
            .clipped()
            .cornerRadius(10)
    }
}

struct ImageMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        ImageMessageCell()
    }
}
