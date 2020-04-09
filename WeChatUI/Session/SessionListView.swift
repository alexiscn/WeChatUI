//
//  SessionListView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct SessionListView: View {
    
    var body: some View {
        NavigationView {
            List {
                SessionRow(session: session)
                SessionRow(session: session)
                SessionRow(session: session)
                SessionRow(session: session)
                SessionRow(session: session)
                SessionRow(session: session)
                SessionRow(session: session)
            }
            .navigationBarTitle("WeChat", displayMode: .inline)
        }
    }
    
}

struct SessionListView_Previews: PreviewProvider {
    static var previews: some View {
        SessionListView()
    }
}
