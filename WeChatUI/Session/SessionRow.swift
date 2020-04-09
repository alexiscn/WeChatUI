//
//  SessionRow.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct SessionRow: View {
    
    var session: Session
    
    var body: some View {
        HStack(spacing: 0) {
            Image(session.avatar).padding()
            VStack(alignment: .leading) {
                HStack {
                    Text(session.name)
                        .lineLimit(1)
                    Spacer()
                    Text(session.updatedTime)
                        .font(.caption)
                        .foregroundColor(Color.gray)
                        .lineLimit(1)
                }
                
                Text(session.content)
                    .font(.caption)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
            }
            Spacer()
        }
        .frame(height: 50)
    }
    
}

struct SessionRow_Previews: PreviewProvider {
    static var previews: some View {
        SessionRow(session: session)
    }
}
