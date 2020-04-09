//
//  SettingsListView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct SettingsListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
                Group {
                    SettingTextRow(title: "Account Security")
                    SectionSeparator()
                }
                
                Group {
                    NavigationLink(destination: AboutView()) {
                        SettingTextRow(title: "Message Notifications")
                    }.buttonStyle(PlainButtonStyle())
                    Divider().padding(.leading, 16)
                    NavigationLink(destination: AboutView()) {
                        SettingTextRow(title: "Privacy")
                    }.buttonStyle(PlainButtonStyle())
                    Divider().padding(.leading, 16)
                    
                    SettingTextRow(title: "General")
                    SectionSeparator()
                }
                .background(Color(UIColor.systemBackground))
                
                Group {
                    NavigationLink(destination: AboutView()) {
                        SettingTextRow(title: "Help & Feedback")
                    }.buttonStyle(PlainButtonStyle())
                    Divider().padding(.leading, 16)
                    NavigationLink(destination: AboutView()) {
                        SettingTextRow(title: "About")
                    }.buttonStyle(PlainButtonStyle())
                    SectionSeparator()
                }
                .background(Color(UIColor.systemBackground))
                
                Group {
                    NavigationLink(destination: AboutView()) {
                        SettingRow(icon: "icons_outlined_setting", title: "Settings")
                    }.buttonStyle(PlainButtonStyle())
                }
            }
        }
        .background(Color(UIColor.systemGroupedBackground))
        .navigationBarTitle("Settings", displayMode: .inline)
    }
}

struct SettingsListView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsListView()
    }
}
