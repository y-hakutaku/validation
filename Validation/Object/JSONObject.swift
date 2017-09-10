//
//  JSONObject.swift
//  Validation
//
//  Created by y_hakutaku on 7/1/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import UIKit

struct JSONObject {

    var validatableDataInfo = Dictionary<String, Validatable>()
    
    // key と valueとrestrictionをmapしたもの
    mutating func addFormatData(key:String, formatData:Validatable) {
        validatableDataInfo[key] = formatData
    }
    
    internal func getValidatableDataInfo() -> Dictionary<String, Validatable>{
        return validatableDataInfo
    }
}
