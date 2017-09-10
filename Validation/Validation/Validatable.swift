//
//  Validatable.swift
//  Validation
//
//  Created by y_hakutaku on 7/8/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import Foundation

protocol Validatable {
    func validate() -> ValidationResult
}
