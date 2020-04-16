//
//  Moment.swift
//  WeChatUI
//
//  Created by xushuifeng on 2020/4/12.
//  Copyright © 2020 alexiscn. All rights reserved.
//

import Foundation
import UIKit

struct Moment: Identifiable {

    var id: String
    
    var userId: String = ""
    
    var time: Int = 0
    
    var content: String? = nil
    
    var body: MomentBody = .none
}

enum MomentBody {
    case none
    case image(MomentImage)
    case multi(MomentMultiImage)
}

struct MomentImage: Identifiable {
    
    var id: String
    
    var size: CGSize = .zero
    
    var image: UIImage? = nil
    
}

struct MomentMultiImage {
    var images: [MomentImage]
}

class MomentComment {
    
    var commentId: String = ""
    
    var nickname: String = ""
    
    var userId: String = ""
    
    var createTime: Int64 = 0
    
    var content: String = ""
    
    var refCommentId: String? = nil
    
    var refUsername: String? = nil
    
    var refUserId: String? = nil
    
    var isLocalAdded: Bool = false
    
    var type: Int = 0
    
    var canBeDeleted: Bool = false
}
