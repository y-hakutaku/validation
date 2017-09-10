//
//  FormatDataForString.swift
//  Validation
//
//  Created by 白澤 義康 on 7/1/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import Foundation

// String Dataでよいかも。 StringとRestrcitionをもちvalidation方法を知っている。結果は持たない。
struct FormatDataForString: Validatable{
    
    var value:String? = nil
    var restriction:Restriction
    
    // deta
    init(value:String?, restriction:Restriction) {
        self.value = value
        self.restriction = restriction
    }
    
    // validation 処理自体は分けるのでもいいかも。
    // コンポジション
    func validate() -> ValidationResult {
        
        var result = ValidationResult();
        
        // mandatory check
        guard let val = value, !restriction.mandatory else {
            result[valueKey:restriction.key] = value
            result[errorKey:restriction.key] = ValidationError(key:restriction.key, errorMessage:"mandatory error")
            return result
        }
        
        // lemgth check
        let length = val.characters.count
        guard length > restriction.min || length < restriction.max else {
            result[valueKey:restriction.key] = value
            result[errorKey:restriction.key] = ValidationError(key:restriction.key, errorMessage:"invalid parameter error")
            return result
        }
        
        //regex NSRegulaerExpretionを利用する
        
        // 設定した値
        result[valueKey:restriction.key] = value
        result[errorKey:restriction.key] = nil //ValidationError(key:restriction.key, errorMessage:"")
        return result
    }
}
