//
//  SessionListView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct SessionListView: View {
    
    @EnvironmentObject var state: RootState
    
    let sessions: [Session] = SampleData.shared.sessions
    
    var body: some View {
        
        List {
            SearchBar().listRowInsets(EdgeInsets())
            ForEach(sessions) { session in
                ZStack {
                    NavigationLink(destination: ChatRoomView(session: session)) {
                        EmptyView()
                    }
                    .hidden()
                    
                    SessionRow(session: session)
                }
            }
        }
        .onAppear {
            self.state.navigationBarTitle = "WeChat"
            self.state.navigationBarTrailingItems = AnyView(Button(action: {
                withAnimation {
                    self.state.showContextMenu.toggle()
                }
            }) {
                Image("icons_outlined_addoutline")
                    .renderingMode(.template)
                    .foregroundColor(Color(.label))
            })
        }
    }
}

struct SessionListView_Previews: PreviewProvider {
    static var previews: some View {
        SessionListView()
            .environmentObject(RootState())
    }
}
