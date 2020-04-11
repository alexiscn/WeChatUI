//
//  EmoticonRow.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/11.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct EmoticonRow: View {
    
    var items: [Expression]
    
    var body: some View {
        HStack {
            ForEach(items, id:\.self) { item in
                EmoticonCell(emoticon: item)
            }
            Spacer()
        }
        .padding()
    }
}

struct EmoticonRow_Previews: PreviewProvider {
    static var previews: some View {
        EmoticonRow(items: [
            Expression(icon: "Expression_1", zh: "微笑", code: ""),
            Expression(icon: "Expression_1", zh: "微笑", code: ""),
            Expression(icon: "Expression_1", zh: "微笑", code: ""),
            Expression(icon: "Expression_1", zh: "微笑", code: "")
        ])
    }
}
