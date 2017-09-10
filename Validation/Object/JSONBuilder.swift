//
//  JSONBuilder.swift
//  Validation
//
//  Created by y_hakutaku on 9/10/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

import UIKit

class JSONBuilder: NSObject {
    
    private var jsonObject : JSONObject
    
    init(jsonObject:JSONObject) {
        self.jsonObject = jsonObject
    }
    
    public func jsonString(){
        
        let dataInfo : Dictionary<String, Validatable> = jsonObject.getValidatableDataInfo()
        
        
        for key in Array(dataInfo.keys) {
            guard let validatable = dataInfo[key] else {
                continue
            }
            let result : ValidationResult = validatable.validate()
            
            if result.hasError() {
                print(result.error);
            }
            
            let val = result.getValue()
            let jsonData :Data
            do{ 
                jsonData = try JSONSerialization.data(withJSONObject: val, options: []) 
            } catch {
                continue
            }
            let jsonStr = String(bytes: jsonData, encoding: .utf8)!
            print(jsonStr)
        }
    }
}
