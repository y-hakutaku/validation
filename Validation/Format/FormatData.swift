//
//  FormatData.swift
//  Validation
//
//  Created by 白澤 義康 on 7/1/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import UIKit

protocol FormatData {
    // protocolにおいてのGenericsの宣言
    associatedtype FormatType

    var value:FormatType? { get set }
    
    var restriction:Restriction { get }
    
    func build()
}
