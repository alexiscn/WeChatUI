//
//  AboutView.swift
//  WeChatUI
//
//  Created by xu.shuifeng on 2020/4/9.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    private let agreement: NSAttributedString = {
        
        let body = NSMutableAttributedString()
        
        body.append(NSAttributedString(string: "Agreement on Software License", attributes: [
            .font: UIFont.systemFont(ofSize: 12)
        ]))
        
        return body
    }()
    
    var body: some View {
        VStack {
            Spacer().frame(height: 80)
            
            // Logo group
            Section {
                Image("About_WeChat_AppIcon_64x64_")
                    .padding(.bottom, 20)
                
                Text("WeChat")
                    .font(.headline)
                    .padding(.bottom, 10)
                
                Text("Version 7.0.12")
                    .font(.subheadline)
            }
            Spacer().frame(height: 20)
            
            // Action Group
            Group {
                Divider()
                HStack {
                    Text("What's Fresh")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(UIColor.separator))
                }
                .frame(height: 40)
                Divider()
                
                HStack {
                    Text("Version Update")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(UIColor.separator))
                }
                .frame(height: 40)
                
                Divider()
            }
            
            Spacer()
            
            Text("Agreement on Software License And Service Privacy Policy")
                .multilineTextAlignment(.center)
                .font(.caption)
                .foregroundColor(Color(UIColor.systemBlue))
            
            Text("腾讯公司 版权所有")
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.top)
            
            Text("Copyright © 2011-2020 Tecent. All Rights Reserved.")
                .font(.caption)
                .foregroundColor(.gray)
            
            
        }.padding(.horizontal, 30)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
