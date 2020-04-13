//
//  RootState.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Combine
import SwiftUI

class RootState: ObservableObject {
    
    @Published var navigationBarTitle: LocalizedStringKey = ""
    
    @Published var navigationBarTrailingItems: AnyView = AnyView(EmptyView())
    
    @Published var showContextMenu = false
}
