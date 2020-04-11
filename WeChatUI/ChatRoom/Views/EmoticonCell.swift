//
//  EmoticonCell.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/11.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct EmoticonCell: View {
    
    var emoticon: Expression
    
    var body: some View {
        Image(uiImage: emoticon.thumbImage!)
    }
}

struct EmoticonCell_Previews: PreviewProvider {
    static var previews: some View {
        EmoticonCell(emoticon: Expression(icon: "Expression_1", zh: "微笑", code: ""))
    }
}
