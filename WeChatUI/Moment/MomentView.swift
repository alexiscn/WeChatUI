//
//  MomentView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct MomentView: View {
    
    @State var moments: [Moment] = SampleData.shared.moments()
    
    var body: some View {
        
        List {
            
            MomentHeader()
                .listRowInsets(.zero)
            
            ForEach(moments) { moment in
                MomentRow(moment: moment)
                    .listRowInsets(.zero)
                    .buttonStyle(PlainButtonStyle())
            }
        
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("Moments")
    }
}

struct MomentView_Previews: PreviewProvider {
    static var previews: some View {
        MomentView()
    }
}
