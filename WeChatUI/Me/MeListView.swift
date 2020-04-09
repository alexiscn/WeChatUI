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
                        SectionSeparator()
                        NavigationLink(destination: MomentView()) {
                            SettingRow(icon: "icons_outlined_wechatpay", title: "WeChat Pay")
                        }.buttonStyle(PlainButtonStyle())
                        SectionSeparator()
                    }
                    Group {
                        SettingRow(icon: "icons_outlined_colorful_favorites", title: "Favorites")
                        SettingRow(icon: "icons_outlined_album", title: "My Posts")
                        Line().padding(.leading, 40)
                        SettingRow(icon: "icons_outlined_colorful_cards", title: "Cards & Offers")
                        Line().padding(.leading, 40)
                        SettingRow(icon: "icons_outlined_sticker", title: "Sticker Gallery")
                        SectionSeparator()
                    }
                    Group {
                        SettingRow(icon: "icons_outlined_setting", title: "Settings")
                    }
                }
            }
            .background(Color(UIColor.systemGroupedBackground))
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct MeListView_Previews: PreviewProvider {
    static var previews: some View {
        MeListView()
    }
}
