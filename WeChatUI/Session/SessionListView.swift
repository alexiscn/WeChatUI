//
//  SessionListView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct SessionListView: View {
    
    @State private var showContextMenu = false
    
    @EnvironmentObject var state: RootState
    
    let sessions: [Session] = SampleData.shared.sessions
    
    var body: some View {
        ZStack {
            
            List {
                ForEach(sessions) { session in
                    ZStack {
                        SessionRow(session: session)
                        NavigationLink(destination: ChatRoomView()) {
                            EmptyView()
                        }
                    }
                }
            }
            
            
            if self.showContextMenu {
                GeometryReader { geometry in
                    
                    SessionContextMenuView().position(x: 250, y: 140)
                    
                }.background(
                    Color.black.opacity(0.5).edgesIgnoringSafeArea(.all).onTapGesture {
                        withAnimation {
                            self.showContextMenu.toggle()
                        }
                    }
                )
            }
        }
        .onAppear {
            self.state.navigationBarTitle = "WeChat"
            self.state.navigationBarTrailingItems = AnyView(Button(action: {
                withAnimation {
                    self.showContextMenu.toggle()
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
