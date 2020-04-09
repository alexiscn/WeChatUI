//
//  SessionRow.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct SessionRow: View {
    
    var session: Session
    
    var body: some View {
        HStack(spacing: 0) {
            KFImage(session.avatar)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(6)
                .padding(.trailing, 8)
            
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
                
                Spacer().frame(height: 4)
                
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
    
    static let session = SampleData.shared.sessions.first!
    
    static var previews: some View {
        SessionRow(session: session)
    }
}
