//
//  Expression.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/11.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation
import UIKit

protocol Emoticon {
    
    var thumbImage: UIImage? { get }
    
    var title: String? { get set }
}

struct Expression: Codable, Hashable {
    
    var title: String? = nil
    
    var thumbImage: UIImage? { return UIImage(named: icon) }

    static var all: [Expression] = {
        guard let path = Bundle.main.path(forResource: "expressions", ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
                return []
        }
        do {
            let expressions = try JSONDecoder().decode([Expression].self, from: data)
            return expressions
        } catch {
            print(error)
        }
        return []
    }()
    
    var icon: String
    var zh: String
    var code: String
    
    var text: String {
        return "[\(zh)]"
    }
    
    func match(text: String) -> Bool {
        return self.text == text
    }
}
