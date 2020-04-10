//
//  ContactListView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ContactListView: View {
    
    @EnvironmentObject var state: RootState
    
    let contacts: [Contact] = []
    
    var body: some View {
        List {
            Text("11")
        }
        .onAppear {
            self.state.navigationBarTitle = "Contacts"
            self.state.navigationBarTrailingItems = AnyView(Button(action: {
                withAnimation {
                    
                }
            }) {
                Image("icons_filled_add-friends")
                    .renderingMode(.template)
                    .foregroundColor(Color(.label))
            })
        }
    }
    
}

struct ContactListView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContactListView()
    }
}
