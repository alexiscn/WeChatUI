//
//  GeneralView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/14.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct GeneralView: View {
    var body: some View {
        
        HStack {
            VStack {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            
            Spacer()
        }.background(Color.red)
        
        
    }
}

struct GeneralView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralView()
    }
}
