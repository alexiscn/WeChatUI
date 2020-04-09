//
//  MeListView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct MeListView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(spacing: 0) {
                    
                    Group {
                        Color(UIColor.systemBackground)
                            .frame(height: 50)
                        MeCardView()
                        Color(UIColor.systemBackground)
                            .frame(height: 20)
                        SectionSeparator()
                    }
                    
                    Group {
                        NavigationLink(destination: MomentView()) {
                            SettingRow(icon: "icons_outlined_wechatpay", title: "WeChat Pay")
                        }.buttonStyle(PlainButtonStyle())
                        SectionSeparator()
                    }
                    Group {
                        SettingRow(icon: "icons_outlined_colorful_favorites", title: "Favorites")
                        Divider().padding(.leading, 40)
                        SettingRow(icon: "icons_outlined_album", title: "My Posts")
                        Divider().padding(.leading, 40)
                        SettingRow(icon: "icons_outlined_colorful_cards", title: "Cards & Offers")
                        Divider().padding(.leading, 40)
                        SettingRow(icon: "icons_outlined_sticker", title: "Sticker Gallery")
                        SectionSeparator()
                    }.background(Color(UIColor.systemBackground))
                    // Settings
                    Group {
                        NavigationLink(destination: SettingsListView()) {
                            SettingRow(icon: "icons_outlined_setting", title: "Settings")
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .background(Color(UIColor.systemGroupedBackground))
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

struct MeListView_Previews: PreviewProvider {
    static var previews: some View {
        MeListView()
    }
}
