//
//  VideoMessageCell.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct VideoMessageCell: View {
    
    var video: VideoMessage
    
    var body: some View {
        
        ZStack {
            
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
        }
        
        
    }
}

struct VideoMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        VideoMessageCell(video: VideoMessage())
    }
}
