//
//  MomentCommentView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/17.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct MomentCommentView: View {
    
    var moment: Moment
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
    
            if self.moment.comments.count > 0 {
                ForEach(self.moment.comments, id:\.self) { comment in
                    HStack {
                        Text(comment.content)
                            .font(.system(size: 15))
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    .padding(.horizontal, 6)
                    .listRowInsets(.zero)
                }
                .padding(3)
                .cornerRadius(12)
                .background(Color(red: 243.0/255, green: 243.0/255, blue: 245.0/255))
            }
        }
    }
}

struct MomentCommentView_Previews: PreviewProvider {
    
    private static let moment = SampleData.shared.moments().first(where: { $0.comments.count > 0 })!
    
    static var previews: some View {
        MomentCommentView(moment: moment)
    }
}
