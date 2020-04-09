//
//  Discover.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation

struct Discover: Hashable, Codable {
 
    enum Item: Int, Codable {
        case moment
        case scan
        case shake
        case news
        case search
        case nearby
        case shop
        case game
        case miniProgram
    }
    
    var item: Item
    
    var title: String
    
    var icon: String
    
    var unread: Bool = false
    
    init(item: Item, title: String, icon: String) {
        self.item = item
        self.title = title
        self.icon = icon
    }
    
    static let moment = Discover(item: .moment, title: "Moment", icon: "icons_outlined_colorful_moment")
    
    static let scan = Discover(item: .scan, title: "Scan", icon: "icons_outlined_scan")
    
    static let shake = Discover(item: .shake, title: "Shake", icon: "icons_outlined_shake")
    
    static let nearby = Discover(item: .nearby, title: "Nearby", icon: "icons_outlined_nearby")
    
    static let shop = Discover(item: .shop, title: "Shop", icon: "icons_outlined_shop")
    
    static let game = Discover(item: .game, title: "Game", icon: "icons_outlined_colorful_game")
    
    static let miniProgram = Discover(item: .miniProgram, title: "Mini Program", icon: "icons_outlined_miniprogram")
}
