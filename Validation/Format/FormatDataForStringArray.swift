//
//  FormatDataForStringArray.swift
//  Validation
//
//  Created by y_hakutaku on 7/16/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import UIKit

class FormatDataForStringArray: Validatable {
    
    var value:String? = nil
    var restriction:Restriction
    
    init(value:String? ,restriction:Restriction) {
        self.value = value
        self.restriction = restriction
    }
    
    func validate() -> ValidationResult {
        var result = ValidationResult();
        guard let val = value, restriction.mandatory else {
            result[valueKey:restriction.key] = value
            result[errorKey:restriction.key] = ValidationError(key:restriction.key, errorMessage:"mandatory error")
            return result
        }
        
        let length = val.characters.count
        guard length < restriction.min || length > restriction.max else {
            result[valueKey:restriction.key] = value
            result[errorKey:restriction.key] = ValidationError(key:restriction.key, errorMessage:"invalid parameter error")
            return result
        }
        result[valueKey:restriction.key] = value
        result[errorKey:restriction.key] = ValidationError(key:restriction.key, errorMessage:"")
        return result
    }
}
