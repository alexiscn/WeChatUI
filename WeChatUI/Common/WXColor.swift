//
//  WXColor.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/8.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

/// convert from weui_color.xml
extension Color {
    
    // MARK: - ****** BG/FG ******
    static let wxBG_0 = dynamicColor("#EDEDED,#191919")
    static let wxBG_1 = dynamicColor("#F7F7F7,#1F1F1F")
    static let wxBG_2 = dynamicColor("#FFFFFF,#232323")
    static let wxBG_3 = dynamicColor("#F7F7F7,#2F2F2F")
    static let wxBG_4 = dynamicColor("#4C4C4C,#606060")
    static let wxBG_5 = dynamicColor("#FFFFFF,#2C2C2C")
        
    static let wxFG_0 = dynamicColor(light: "#000000", lightAlpha: 0.9,
                                     dark: "#FFFFFF", darkAlpha: 0.8)
    static let wxFG_0_5 = dynamicColor(light: "#000000", lightAlpha: 0.9,
                                       dark: "#FFFFFF", darkAlpha: 0.6)
    static let wxFG_1 = dynamicColor(light: "#000000", lightAlpha: 0.5,
                                     dark: "#FFFFFF", darkAlpha: 0.5)
    static let wxFG_2 = dynamicColor(light: "#000000", lightAlpha: 0.3,
                                     dark: "#FFFFFF", darkAlpha: 0.3)
    static let wxFG_3 = dynamicColor(light: "#000000", lightAlpha: 0.1,
                                     dark: "#FFFFFF", darkAlpha: 0.05)
    static let wxFG_4 = dynamicColor(light: "#000000", lightAlpha: 0.15,
                                     dark: "#FFFFFF", darkAlpha: 0.1)
    
    // MARK: - white and black
    static let wxWhite = dynamicColor("#FFFFFF")
    static let wxBW_97 = dynamicColor("#F7F7F7")
    static let wxBW_95 = dynamicColor("#F2F2F2")
    static let wxBW_93 = dynamicColor("#EDEDED")
    static let wxBW_90 = dynamicColor("#E5E5E5")
    static let wxBW_50 = dynamicColor("#808080")
    static let wxBW_20 = dynamicColor("#303030")
    static let wxBW_10 = dynamicColor("#181818")
    static let wxBW_0 = dynamicColor("#000000")
    static let wxBW_BG_100 = dynamicColor("#FFFFFF")
    static let wxBW_BG_20 = dynamicColor("#333333")
    static let wxBW_BG_0 = dynamicColor("#000000")

    // MARK: - red
    static let wxRed = dynamicColor("#FA5151,#FA5151")
    static let wxRed_170 = dynamicColor("#FDCACA")
    static let wxRed_120 = dynamicColor("#FB7373")
    static let wxRed_100 = dynamicColor("#FA5151")
    static let wxRed_90 = dynamicColor("#E14949")
    static let wxRed_80 = dynamicColor("#C84040")
    static let wxRed_BG_130 = dynamicColor("#DD847E")
    static let wxRed_BG_110 = dynamicColor("#D3625A")
    static let wxRed_BG_100 = dynamicColor("#CF5148")
    static let wxRed_BG_90 = dynamicColor("#B94840")

    // MARK: - Orange
    static let wxOrange = dynamicColor("#FA9D3B,#C87D2F")
    static let wxOrange_170 = dynamicColor("#FDE1C3")
    static let wxOrange_120 = dynamicColor("#FBB062")
    static let wxOrange_100 = dynamicColor("#FA9D3B,#C87D2F")
    static let wxOrange_90 = dynamicColor("#E08C34")
    static let wxOrange_80 = dynamicColor("#C87D2F")
    static let wxOrange_BG_130 = dynamicColor("#F0A04D")
    static let wxOrange_BG_110 = dynamicColor("#EC8519")
    static let wxOrange_BG_100 = dynamicColor("#EA7800,#BB6000")
    static let wxOrange_BG_90 = dynamicColor("#D26B00")

    // MARK: - Yellow
    static let wxYellow = dynamicColor("#FFC300,#CC9C00")
    static let wxYellow_170 = dynamicColor("#FFECB2")
    static let wxYellow_120 = dynamicColor("#FFCF33")
    static let wxYellow_100 = dynamicColor("#FFC300,#CC9C00")
    static let wxYellow_90 = dynamicColor("#E6AF00")
    static let wxYellow_80 = dynamicColor("#CC9C00")
    static let wxYellow_BG_130 = dynamicColor("#F3CC4D")
    static let wxYellow_BG_110 = dynamicColor("#F0BD19")
    static let wxYellow_BG_100 = dynamicColor("#EFB600")
    static let wxYellow_BG_90 = dynamicColor("#D7A400")

    // MARK: - Green
    static let wxGreen = dynamicColor("#91D300,#74A800")
    static let wxGreen_170 = dynamicColor("#DEF1B3")
    static let wxGreen_120 = dynamicColor("#A7DB33")
    static let wxGreen_100 = dynamicColor("#91D300,#74A800")
    static let wxGreen_90 = dynamicColor("#82BD00")
    static let wxGreen_80 = dynamicColor("#74A800")
    static let wxGreen_BG_130 = dynamicColor("#B5D179")
    static let wxGreen_BG_110 = dynamicColor("#A0C452")
    static let wxGreen_BG_100 = dynamicColor("#96BE40")
    static let wxGreen_BG_90 = dynamicColor("#86AA39")
    
    // MARK: - LightGreen
    static let wxLightGreen = dynamicColor("#95EC69,#28B561")
    static let wxLightGreen_170 = dynamicColor("#DFF8D2")
    static let wxLightGreen_120 = dynamicColor("#ABEC8A")
    static let wxLightGreen_100 = dynamicColor("#95EC69,#28B561")
    static let wxLightGreen_90 = dynamicColor("#88D162")
    static let wxLightGreen_80 = dynamicColor("#78B957")
    static let wxLightGreen_BG_130 = dynamicColor("#9CDD90")
    static let wxLightGreen_BG_110 = dynamicColor("#9CDD90")
    static let wxLightGreen_BG_100 = dynamicColor("#72CF60")
    static let wxLightGreen_BG_90 = dynamicColor("#66B956")
    
    // MARK: - Brand
    static let wxBrand = dynamicColor("#07C160")
    static let wxBrand_170 = dynamicColor("#B4ECCE")
    static let wxBrand_120 = dynamicColor("#38CD7F")
    static let wxBrand_100 = dynamicColor("#07C160")
    static let wxBrand_90 = dynamicColor("#06AE56")
    static let wxBrand_80 = dynamicColor("#059A4C")
    static let wxBrand_BG_130 = dynamicColor("#69C694")
    static let wxBrand_BG_110 = dynamicColor("#3EB575")
    static let wxBrand_BG_100 = dynamicColor("#2AAE67")
    static let wxBrand_BG_90 = dynamicColor("#259C5C")

    // MARK: - Blue
    static let wxBlue = dynamicColor("#10AEFF")
    static let wxBlue_170 = dynamicColor("#B7E6FF")
    static let wxBlue_120 = dynamicColor("#3FBEFF")
    static let wxBlue_100 = dynamicColor("#10AEFF")
    static let wxBlue_90 = dynamicColor("#0E9CE6")
    static let wxBlue_80 = dynamicColor("#0C8BCC")
    static let wxBlue_BG_130 = dynamicColor("#7FC0EA")
    static let wxBlue_BG_110 = dynamicColor("#5AAFE4")
    static let wxBlue_BG_100 = dynamicColor("#48A6E2")
    static let wxBlue_BG_90 = dynamicColor("#4095CB")

    // MARK: - Indigo
    static let wxIndigo = dynamicColor("#1485EE,#1196FF")
    static let wxIndigo_170 = dynamicColor("#B8DAF9")
    static let wxIndigo_120 = dynamicColor("#439DF1")
    static let wxIndigo_100 = dynamicColor("#1485EE,#1196FF")
    static let wxIndigo_90 = dynamicColor("#1277D6")
    static let wxIndigo_80 = dynamicColor("#106ABE")
    static let wxIndigo_60 = dynamicColor("#0C4F8E")
    static let wxIndigo_BG_130 = dynamicColor("#6BA0D2")
    static let wxIndigo_BG_110 = dynamicColor("#3F84C5")
    static let wxIndigo_BG_100 = dynamicColor("#2B77BF")
    static let wxIndigo_BG_90 = dynamicColor("#266AAB")

    // MARK: - Purple
    static let wxPurple = dynamicColor("#6467F0,#8183FF")
    static let wxPurple_170 = dynamicColor("#D0D1FA")
    static let wxPurple_120 = dynamicColor("#8385F3")
    static let wxPurple_100 = dynamicColor("#6467F0,#8183FF")
    static let wxPurple_90 = dynamicColor("#595CD7")
    static let wxPurple_80 = dynamicColor("#5052C0")
    static let wxPurple_BG_130 = dynamicColor("#9496CE")
    static let wxPurple_BG_110 = dynamicColor("#7678C1")
    static let wxPurple_BG_100 = dynamicColor("#6769BA")
    static let wxPurple_BG_90 = dynamicColor("#5C5EA7")
    
    // MARK: - Link
    static let wxLink_100 = dynamicColor("#576B95,#7D90A9")
    static let wxLink_170 = dynamicColor("#CCD2DE")
    static let wxLink_120 = dynamicColor("#7888AA")
    static let wxLink_90 = dynamicColor("#4E6085")
    static let wxLink_80 = dynamicColor("#455577")
    
    // MARK: - TextGreen
    static let wxTextGreen = dynamicColor("#06AE56,#259C5C")
    
    static func dynamicColor(_ hex: String) -> Color {
        if hex.contains(",") {
            let components = hex.split(separator: ",")
            let lightHex = String(components[0])
            let darkHex = String(components[1])
            return Color(UIColor(dynamicProvider: { (trait) -> UIColor in
                if trait.userInterfaceStyle == .dark {
                    return UIColor(hexString: darkHex)
                } else {
                    return UIColor(hexString: lightHex)
                }
            }))
        } else {
            return Color(UIColor(hexString: hex))
        }
    }
    
    static func dynamicColor(light: String, lightAlpha: Float, dark: String, darkAlpha: Float) -> Color {
        return Color(UIColor(dynamicProvider: { (trait) -> UIColor in
            if trait.userInterfaceStyle == .dark {
                return UIColor(hexString: dark, alpha: darkAlpha)
            } else {
                return UIColor(hexString: light, alpha: lightAlpha)
            }
        }))
    }
}
