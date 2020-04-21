//
//  ContentView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/7.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    @ObservedObject var state = RootState()
 
    var body: some View {
        
        ZStack {
            NavigationView {
                
                TabView(selection: $selection){
                    
                    SessionListView()
                        .tabItem {
                            VStack {
                                Image("icons_filled_chats").renderingMode(.template)
                                Text("Wechat")
                            }
                        }
                        .tag(0)
                        
                    ContactListView()
                        .tabItem {
                            VStack {
                                Image("icons_filled_me").renderingMode(.template)
                                Text("Contacts")
                            }
                        }
                        .tag(1)
                        
                    DiscoverListView()
                        .tabItem {
                            VStack {
                                Image("icons_filled_discover").renderingMode(.template)
                                Text("Discover")
                            }
                        }
                        .tag(2)
                        
                    MeListView()
                        .tabItem {
                            VStack {
                                Image("icons_filled_me").renderingMode(.template)
                                Text("Me")
                            }
                        }
                        .tag(3)

                }
                .accentColor(.wxBrand)
                .navigationBarTitle(state.navigationBarTitle, displayMode: .inline)
                .navigationBarItems(trailing: state.navigationBarTrailingItems)
                .environmentObject(state)
            }
            
            
            if self.state.showContextMenu {
                GeometryReader { geometry in
                    SessionContextMenuView().position(x: 250, y: 140)
                }.background(
                    Color.black.opacity(0.5).edgesIgnoringSafeArea(.all).onTapGesture {
                        withAnimation {
                            self.state.showContextMenu.toggle()
                        }
                    }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
