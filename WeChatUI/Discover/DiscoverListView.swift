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
                        DiscoverRow(discover: .moment)
                        SectionSeparator()
                    }
                    Group {
                        DiscoverRow(discover: .scan)
                        Line().padding(.leading, 40)
                        DiscoverRow(discover: .shake)
                        SectionSeparator()
                    }
                    Group {
                        DiscoverRow(discover: .nearby)
                        SectionSeparator()
                    }
                    Group {
                        DiscoverRow(discover: .shop)
                        Line().padding(.leading, 40)
                        DiscoverRow(discover: .game)
                        SectionSeparator()
                    }
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
