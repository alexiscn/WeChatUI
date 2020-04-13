//
//  PageCollectionView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/13.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

class PageCollectionViewLayout: UICollectionViewLayout {
    
    override func prepare() {
        super.prepare()
    }
    
}

struct PageCollectionView: UIViewRepresentable {
    
    var numberOfRows: Int
    
    var numberOfColumns: Int
    
    func makeUIView(context: Context) -> UICollectionView {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        return collectionView
    }
    
    func updateUIView(_ uiView: UICollectionView, context: Context) {
        
    }
    
}

class PageCollectionViewCoordinator: NSObject {
    
    init(_ pageCollectionView: PageCollectionView) {
        
    }
    
}
