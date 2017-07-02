//
//  ValueInfo.swift
//  Validation
//
//  Created by 白澤 義康 on 7/1/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import UIKit

struct ValueInfo {
    var jsonInfo:Dictionary<String,Any>
    
    init() {
        jsonInfo = Dictionary<String,Any>()
    }
    
    // structはデフォルトでは不変。ただしmutatingをつけることにより可能になる
    // TODO valueはvalidationのblockになる
    mutating func setJson(key:String, value:Any) {
        jsonInfo[key] = value
    }
    
    func validate() {
        
    }
}
