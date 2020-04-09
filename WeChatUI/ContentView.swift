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
 
    var body: some View {
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
        }.accentColor(.wx_tintColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
