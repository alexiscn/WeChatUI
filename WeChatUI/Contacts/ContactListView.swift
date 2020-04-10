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
    
    @State var contacts: [Contact] = SampleData.shared.contacts()
    
    var actions: [ContactAction] = ContactAction.allCases
    
    var body: some View {
        List {
            ForEach(actions, id: \.self) { action in
                VStack(spacing: 0) {
                    ContactActionRow(action: action)
                    Divider().padding(.leading, 60)
                }
            }
            .listRowInsets(EdgeInsets())
            
            ForEach(contacts) { contact in
                Section(header: ContactSectionHeader(title: "A")) {
                    ContactRow(contact: contact)
                }
            }
        }
        .listStyle(PlainListStyle())
        .onAppear {
            self.loadContacts()
            self.state.navigationBarTitle = "Contacts"
            self.state.navigationBarTrailingItems = AnyView(Button(action: {
                
            }) {
                Image("icons_filled_add-friends")
                    .renderingMode(.template)
                    .foregroundColor(Color(.label))
            })
        }
    }
    
    private func loadContacts() {
        
    }
}

struct ContactListView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContactListView()
        .environmentObject(RootState())
    }
}
