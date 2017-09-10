//
//  ValidationResult.swift
//  Validation
//
//  Created by 白澤 義康 on 7/4/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import UIKit

struct ValidationResult {
    var value:Dictionary<String,Any?> = Dictionary<String, Any?>()
    var error:Dictionary<String,ValidationError> = Dictionary<String,ValidationError>()
    
    subscript(valueKey key: String) -> Any? {
        get {
            return value[key] ?? nil
        }
        
        set {
            value[key] = newValue
        }
    }
    
    subscript(errorKey key: String) -> ValidationError? {
        get {
            return error[key] ?? nil
        }
        
        set {
            error[key] = newValue
        }
    }
    
    // TODO
    func hasError() -> Bool {
        if Array(error.keys).count == 0 {
            return false
        }
        return true
    }
    
    func getValue() -> Dictionary<String, Any?>{
        return value
    }
}
