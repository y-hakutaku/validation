//
//  RestrictionError.swift
//  Validation
//
//  Created by y_hakutaku on 7/2/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import UIKit

struct ValidationError {
    var key:String
    let errorMessage:String
    
    init(key:String, errorMessage:String) {
        self.key = key
        self.errorMessage = errorMessage
    }
    
    mutating func update(key:String){
        self.key += key
    }
    
    
}
