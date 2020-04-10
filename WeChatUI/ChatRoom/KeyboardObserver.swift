//
//  KeyboardObserver.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/10.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI
import Combine

class KeyboardObserver: ObservableObject {
    
    @Published private(set) var height: CGFloat = 0.0
    
    init() {
        addObserver()
    }
    
    deinit {
        removeObserver()
    }
    
    func addObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(onKeyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(onKeyboardDidHide(_:)), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    func removeObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func onKeyboardWillShow(_ notification: Notification) {
        if let size = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.size {
            height = size.height - 34
        }
    }
    
    @objc private func onKeyboardDidHide(_ notification: Notification) {
        height = 0
    }
    
}
