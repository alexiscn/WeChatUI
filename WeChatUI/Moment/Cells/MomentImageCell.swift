//
//  MomentImageCell.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/12.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct MomentImageCell: View {
    
    var image: MomentImage
    
    var maxSize = Constants.screenWidth * 0.6
    
    var minSize = Constants.screenWidth * 0.1
    
    var width: CGFloat {
        let ratio = image.size.width / image.size.height
        let w = ratio > 1 ?  maxSize: ratio * maxSize
        return max(w, minSize)
    }
    
    var height: CGFloat {
        let ratio = image.size.width / image.size.height
        let h = ratio > 1 ? maxSize/ratio : maxSize
        return max(h, minSize)
    }
    
    var body: some View {
        Image(uiImage: image.image ?? UIImage())
            .resizable()
            .frame(width: self.width, height: self.height)
    }
}

struct MomentImageCell_Previews: PreviewProvider {
    static var previews: some View {
        MomentImageCell(image: MomentImage())
    }
}
