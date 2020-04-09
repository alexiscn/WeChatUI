//
//  ContactListView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct ContactListView: View {
    
    let contacts: [Contact] = []
    
    var body: some View {
        ZStack {
            
            NavigationView {
                List {
                    Text("11")
                }
                .navigationBarTitle("Contacts", displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    withAnimation {
                        
                    }
                }) {
                    Image("icons_filled_add-friends")
                        .renderingMode(.original)
                        .foregroundColor(Color(.label))
                })
            }
        }
    }
    
}

struct ContactListView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContactListView()
    }
}
