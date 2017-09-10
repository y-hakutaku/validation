//
//  Validatable.swift
//  Validation
//
//  Created by 白澤 義康 on 7/8/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import Foundation

protocol Validatable {
    func validate() -> ValidationResult
}
