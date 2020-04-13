//
//  MomentHeader.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/12.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct MomentHeader: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: Constants.screenWidth, height: Constants.screenWidth)
                .clipped()
            
            HStack(alignment: .top) {
                Text("SwiftUI")
                    .foregroundColor(.white)
                    .padding(.top, 5)
                    .padding(.trailing)
                Image("swiftui")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.trailing)
            }.padding(.bottom, -35)
        }
    }
}

struct MomentHeader_Previews: PreviewProvider {
    static var previews: some View {
        MomentHeader()
    }
}
