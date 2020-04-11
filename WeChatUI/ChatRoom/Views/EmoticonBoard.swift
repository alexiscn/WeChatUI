//
//  EmoticonBoard.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/11.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct EmoticonBoard: View {
    
    @State var dataSource: [[Expression]] = []
    
    var body: some View {
        
        List {
            ForEach(dataSource, id:\.self) { items in
                EmoticonRow(items: items)
            }
        }
        .onAppear {
            self.loadExpressions()
        }
    }
    
    private func loadExpressions() {
        let all = Expression.all
        let numberOfItemsInRow = 7
        
        var temp: [Expression] = []
        var index = 0
        for expr in all {
            
            temp.append(expr)
            index += 1
            if index == numberOfItemsInRow {
                index = 0
                dataSource.append(temp)
                temp.removeAll()
            }
        }
        if temp.count > 0 {
            dataSource.append(temp)
        }
        print(dataSource.count)
    }
}

struct EmoticonBoard_Previews: PreviewProvider {
    static var previews: some View {
        EmoticonBoard()
    }
}
