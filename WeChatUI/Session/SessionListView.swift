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
    
    let sessions: [Session] = SampleData.shared.sessions
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    
                    ForEach(sessions) { session in
                        ZStack {
                            NavigationLink(destination: ChatRoomView()) {
                                EmptyView()
                            }
                            SessionRow(session: session)
                        }
                    }
                }
                .navigationBarTitle("WeChat", displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    withAnimation {
                        self.showContextMenu.toggle()
                    }
                }) {
                    Image("icons_outlined_addoutline")
                        .renderingMode(.original)
                        .foregroundColor(Color(.label))
                })
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
    }
}

struct SessionListView_Previews: PreviewProvider {
    static var previews: some View {
        SessionListView()
    }
}
