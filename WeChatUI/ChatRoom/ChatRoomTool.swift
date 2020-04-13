//
//  ChatRoomTool.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/13.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation

enum ChatRoomTool: CaseIterable {
    case album
    case camera
    case videoCall
    case location
    case redPacket
    case transfer
    case voice
    case favorites
    case contactCard
    case files
    case coupons
    
    var icon: String {
        switch self {
        case .album:
            return "ChatRomm_ToolPanel_Icon_Photo_64x64_"
        case .camera:
            return "ChatRomm_ToolPanel_Icon_Video_64x64_"
        case .videoCall:
            return "ChatRomm_ToolPanel_Icon_Videovoip_64x64_"
        case .location:
            return "ChatRomm_ToolPanel_Icon_Location_64x64_"
        case .redPacket:
            return "ChatRomm_ToolPanel_Icon_Luckymoney_64x64_"
        case .transfer:
            return "ChatRomm_ToolPanel_Icon_Pay_64x64_"
        case .voice:
            return "ChatRomm_ToolPanel_Icon_Voiceinput_64x64_"
        case .favorites:
            return "ChatRomm_ToolPanel_Icon_MyFav_64x64_"
        case .contactCard:
            return "ChatRomm_ToolPanel_Icon_FriendCard_64x64_"
        case .files:
            return "ChatRomm_ToolPanel_Icon_Files_64x64_"
        case .coupons:
            return "ChatRomm_ToolPanel_Icon_Wallet_64x64_"
        }
    }
    
    var title: String {
        switch self {
        case .album:
            return "Album"
        case .camera:
            return "Camera"
        case .videoCall:
            return "Video Call"
        case .location:
            return "Location"
        case .redPacket:
            return "Red Packet"
        case .transfer:
            return "Transfer"
        case .voice:
            return "Voice Input"
        case .favorites:
            return "Favorites"
        case .contactCard:
            return "Contact Card"
        case .files:
            return "Files"
        case .coupons:
            return "Coupons"
        }
    }
}
