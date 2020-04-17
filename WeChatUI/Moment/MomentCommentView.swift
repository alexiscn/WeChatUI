//
//  MomentCommentView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/17.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct MomentCommentView: View {
    
    var comments: [String] = [
        "12344",
        "12344",
        "12344"
    ]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            Image("AlbumTriangleB_45x6_")
                .frame(width: 45, height: 6)
    
            ForEach(self.comments, id: \.self) { comment in
                HStack {
                    Text(comment)
                    Spacer()
                }
                .padding(.vertical, 5)
                .listRowInsets(.zero)
            }
            .background(Color(red: 243.0/255, green: 243.0/255, blue: 245.0/255))
        }
    }
}

struct MomentCommentView_Previews: PreviewProvider {
    static var previews: some View {
        MomentCommentView()
    }
}
