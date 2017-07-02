 //
//  ValidationType.swift
//  Validation
//
//  Created by 白澤 義康 on 7/1/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

enum ValidationType {
    case string(FormatDataForString)
    case stringArray(Array<String>)
    case int
    case intArray
    case double
    case doubleArray
    case bool
    case boolArray
    case dictionary
    case dictionaryArray
    
    public func validate() -> (() -> String)?{        
        switch self {
        case let .string(formatData):
            //let error:String? = self.mandatoryCheck(formatData: formatData)
            // nilじゃなかったらこのif blockに入る。
            if let error = self.mandatoryCheck(formatData: formatData) {
                return {() -> String in return error}
            }
            break
        case .stringArray:
            break
        case .int:
            break
        case .intArray:
            break
        case .double:
            break
        case .doubleArray:
            break
        case .bool:
            break
        case .boolArray:
            break
        case .dictionary:
            break
        case .dictionaryArray:
            break
        }
        
        return nil
    }
    
    func mandatoryCheck<Parameter:FormatData>(formatData:Parameter) -> String?{
        
        if nil != formatData.value {
            return nil
        }
        
        if formatData.restriction.mandatory {
            return formatData.restriction.key + "mandatory error"
        } else {
            return nil
        }
    }
}
