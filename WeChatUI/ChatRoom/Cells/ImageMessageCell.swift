//
//  ImageMessageCell.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ImageMessageCell: View {
    
    var image: ImageMessage
    
    var maxSize = Constants.screenWidth * 0.5
    
    var minSize = Constants.screenWidth * 0.1
    
    var width: CGFloat {
        let w = image.aspectRatio > 1 ?  maxSize: image.aspectRatio * maxSize
        return max(w, minSize)
    }
    
    var height: CGFloat {
        let h = image.aspectRatio > 1 ? maxSize/image.aspectRatio : maxSize
        return max(h, minSize)
    }
    
    var body: some View {
        Image("2")
            .resizable()
            .frame(width: self.width, height: self.height)
            .cornerRadius(10)
    }
}

struct ImageMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        ImageMessageCell(image: ImageMessage(image: "2", aspectRatio: 27.0/40))
    }
}
