//
//  VisualEffectView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/14.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct VisualEffectView: UIViewRepresentable {

    var style: UIBlurEffect.Style
    
    init(_ style: UIBlurEffect.Style = .systemChromeMaterial) {
        self.style = style
    }
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}


