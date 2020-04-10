//
//  RichText.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct RichText: UIViewRepresentable {
    
    typealias UIViewType = UILabel
    
    var attributedText: NSAttributedString
    
    init(_ attributedText: NSAttributedString) {
        self.attributedText = attributedText
    }
    
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.textAlignment = .left
        label.numberOfLines = 0
        //label.lineBreakMode = .byWordWrapping
        label.autoresizesSubviews = true
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.attributedText = attributedText
    }
}

