//
//  MomentMultiImageCell.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/12.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct MomentMultiImageCell: View {
    
    var images: [MomentImage]
    
    var body: some View {
        // TODO: use available width to calculate item size
        ZStack(alignment: .topLeading) {
            ForEach(0..<self.images.count) { index in
                Image(uiImage: self.images[index].image ?? UIImage())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 82, height: 82)
                    .clipped()
                    .alignmentGuide(.leading) { d -> CGFloat in
                        let col = CGFloat(index%3)
                        return -(d.width + 6) * col
                    }
                    .alignmentGuide(.top) { d -> CGFloat in
                        let row = CGFloat(index/3)
                        return -(d.height + 6) * CGFloat(row)
                    }
            }
        }
    }
}

struct MomentMultiImageCell_Previews: PreviewProvider {
    static var previews: some View {
        MomentMultiImageCell(images: [
            MomentImage(id: UUID().uuidString, size: CGSize(width: 270, height: 400), image: UIImage(named: "2")),
            MomentImage(id: UUID().uuidString, size: CGSize(width: 270, height: 400), image: UIImage(named: "2")),
            MomentImage(id: UUID().uuidString, size: CGSize(width: 270, height: 400), image: UIImage(named: "2")),
            MomentImage(id: UUID().uuidString, size: CGSize(width: 270, height: 400), image: UIImage(named: "1"))
        ])
    }
}
