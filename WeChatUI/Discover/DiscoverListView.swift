//
//  DiscoverListView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct DiscoverListView: View {
    
    /// for the reason that Section can not change margin with GroupListStyle
    /// We use ScrollView to build the list
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 0) {
                    Group {
                        NavigationLink(destination: MomentView()) {
                            DiscoverRow(discover: .moment)
                        }.buttonStyle(PlainButtonStyle())
                        SectionSeparator()
                    }
                    Group {
                        DiscoverRow(discover: .scan)
                        Divider().padding(.leading, 40)
                        DiscoverRow(discover: .shake)
                        SectionSeparator()
                    }
                    .background(Color(UIColor.systemBackground))
                    Group {
                        DiscoverRow(discover: .nearby, unread: true)
                        SectionSeparator()
                    }
                    Group {
                        DiscoverRow(discover: .shop)
                        Divider().padding(.leading, 40)
                        DiscoverRow(discover: .game)
                        SectionSeparator()
                    }
                    .background(Color(UIColor.systemBackground))
                    Group {
                        DiscoverRow(discover: .miniProgram)
                    }
                }
            }
            .background(Color(UIColor.systemGroupedBackground))
            .navigationBarTitle("Discover", displayMode: .inline)
        }
    }
    
}

struct DiscoverListView_Previews: PreviewProvider {
    
    static var previews: some View {
        DiscoverListView()
    }
}
