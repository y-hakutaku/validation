//
//  FormatDataForString.swift
//  Validation
//
//  Created by 白澤 義康 on 7/1/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import UIKit

struct FormatDataForString: FormatData{
    var value:String? = nil
    let restriction:Restriction
    // validationを持つのかも
    init(value:String? ,_ restriction:Restriction) {
        self.value = value
        self.restriction = restriction
    }
    
    
    func build() -> (){
        ValidationType.string(self).validate()
    }
}
