//
//  PageControl.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/13.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct PageControl: UIViewRepresentable {
    
    var numberOfPages: Int
    
    @Binding var currentPage: Int
    
    func makeCoordinator() -> PageControlCoordinator {
        PageControlCoordinator(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(self, action: #selector(PageControlCoordinator.updateCurrentPage(sender:)), for: .valueChanged)
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}

class PageControlCoordinator: NSObject {
    var control: PageControl
    
    init(_ control: PageControl) {
        self.control = control
    }
    
    @objc func updateCurrentPage(sender: UIPageControl) {
        control.currentPage = sender.currentPage
    }
}
