//
//  MeCardView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct MeCardView: View {
    var body: some View {
        HStack(spacing: 0) {
            Image("swiftui").padding(.horizontal)
            VStack(alignment: .leading) {
                Text("SwiftUI")
                HStack {
                    Text("WeChatID: iloveswiftui")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(UIColor.separator))
                }
            }
            Spacer()
        }.background(Color(UIColor.systemBackground))
    }
}

struct MeCardView_Previews: PreviewProvider {
    static var previews: some View {
        MeCardView()
    }
}
