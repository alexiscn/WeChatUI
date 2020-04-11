//
//  SearchBar.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/11.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.secondary)
                Text("Search")
                    .foregroundColor(.secondary)
                Spacer()
            }
            .frame(height: 36)
            .background(Color(UIColor.systemBackground))
            .cornerRadius(6)
        }
        .padding(.all, 12)
        .background(Color(UIColor.systemGroupedBackground))
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
