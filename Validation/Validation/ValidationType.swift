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
    
//    public func validate() -> Bool{
//        switch self {
//        case let .string(formatData):
////            guard self.mandatoryCheck(formatData: formatData) else {
//                return false
//            }
//        
//            
//        default:
//            return false
//        }
//        
//        return false
//    }
//    // validationError == nilなら自身のactionLogInfoにkey valueつめる
//    // validationError == nilじゃなかったらkey value つめつつ　errorもkey valueつめる
//    public func validate() -> (() -> ValidationError)?{        
//        switch self {
//        case let .string(formatData):
//            //let error:String? = self.mandatoryCheck(formatData: formatData)
//            // nilじゃなかったらこのif blockに入る。
//            if let error = self.mandatoryCheck(formatData: formatData) {
//                return {() -> ValidationError in 
//                    return ValidationError(key:"",errorMessage:error)
//                }
//            }
//            break
//        case .stringArray:
//            break
//        case .int:
//            break
//        case .intArray:
//            break
//        case .double:
//            break
//        case .doubleArray:
//            break
//        case .bool:
//            break
//        case .boolArray:
//            break
//        case .dictionary:
//            break
//        case .dictionaryArray:
//            break
//        }
//        
//        return nil
//    }
    
//    func mandatoryCheck(formatData:Validatable) -> Bool{
//        
//        if nil != formatData.value {
//            return true
//        }
//        
//        if formatData.restriction.mandatory {
//            return false //formatData.restriction.key + "mandatory error"
//        } else {
//            return true
//        }
//    }
//    
//    func minCheck<Parameter:FormatData<Any>>(formatdata:Parameter) -> Bool {
//        return true
//    }
}
 
