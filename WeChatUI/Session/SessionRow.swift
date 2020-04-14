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
        
        ZStack(alignment: .bottom) {
            HStack(spacing: 0) {
                ZStack(alignment: .topTrailing) {
                    KFImage(session.avatar)
                        .resizable()
                        .frame(width: 48, height: 48)
                        .cornerRadius(6)
                    
                    if session.unreadCount > 0 {
                        if session.showUnreadAsRedDot {
                            BadgeDot()
                                .padding([.top, .trailing], -4)
                        } else {
                            BadgeView(number: 3)
                                .padding([.top, .trailing], -8)
                        }
                    }
                }
                .padding(.leading, 12)
                
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
                    
                    Spacer().frame(height: 6)
                    
                    Text(session.content)
                        .font(.caption)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                }
                .padding(.leading, 10)
                Spacer()
            }
            .frame(height: 72)
            
            Divider()
                .padding(.leading, 72)
                .padding(.bottom, 0)
        }
        
    }
    
}

struct SessionRow_Previews: PreviewProvider {
    
    static let session = SampleData.shared.sessions.first!
    
    static var previews: some View {
        SessionRow(session: session)
    }
}
