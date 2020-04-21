//
//  MomentRow.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/12.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct MomentRow: View {
    
    var moment: Moment
    
    var body: some View {
        
        
        HStack(alignment: .top) {
            
            Image("1")
                .resizable()
                .frame(width: 48, height: 48)
                .cornerRadius(6)
                .padding(.leading)
         
            VStack(alignment: .leading, spacing: 5) {
                
                HStack {
                    Text(moment.username)
                        .foregroundColor(.wxLink_100)
                        .font(.headline)
                    Spacer()
                }
                
                if moment.content != nil {
                    Text(moment.content!)
                }
                
                content()
                
                // Time
                HStack {
                    Text("9 mins ago")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image("AlbumOperateMore_32x20_")
                    }
                    .frame(width: 44, height: 28)
                    .padding(.trailing, 10)
                }
                
                // Comments and likes
                if moment.comments.count > 0 || moment.likes.count > 0 {
                    MomentCommentView(moment: moment)
                }
            }
        }
        .padding(.vertical, 6)
    }
    
    func content() -> AnyView {
        switch moment.body {
        case .image(let image):
            return AnyView(MomentImageCell(image: image))
        case .multi(let multi):
            return AnyView(MomentMultiImageCell(images: multi.images))
        default:
            return AnyView(EmptyView())
        }
    }
}

struct MomentRow_Previews: PreviewProvider {
    static var previews: some View {
        MomentRow(moment: Moment(id: "111", content: "GOT", body: .image(MomentImage(id: UUID().uuidString, size: CGSize(width: 270, height: 400), image: UIImage(named: "2")))))
    }
}
