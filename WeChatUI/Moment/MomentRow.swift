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
         
            VStack(alignment: .leading, spacing: 3) {
                
                HStack {
                    Text("name").foregroundColor(Color(UIColor.link))
                        .font(.headline)
                    Spacer()
                }
                
                if moment.content != nil {
                    Text(moment.content!)
                }
                
                content()
                
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
            }
        }
        .padding(.vertical, 6)
    }
    
    func content() -> AnyView {
        switch moment.body {
        case .image(let image):
            return AnyView(MomentImageCell(image: image))
        default:
            return AnyView(EmptyView())
        }
    }
}

struct MomentRow_Previews: PreviewProvider {
    static var previews: some View {
        MomentRow(moment: Moment(id: "111", content: "GOT", body: .image(MomentImage(size: CGSize(width: 270, height: 400), image: UIImage(named: "2")))))
    }
}
