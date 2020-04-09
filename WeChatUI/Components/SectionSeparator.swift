//
//  SectionSeparator.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct SectionSeparator: View {
    var body: some View {
        VStack {
            Color(UIColor.systemGroupedBackground)
        }
        .frame(height: 8.0)
    }
}

struct SectionSeparator_Previews: PreviewProvider {
    static var previews: some View {
        SectionSeparator()
    }
}
