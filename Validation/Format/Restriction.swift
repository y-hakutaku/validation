//
//  Restriction.swift
//  Validation
//
//  Created by y_hakutaku on 7/1/17.
//  Copyright © 2017 y_hakutaku. All rights reserved.
//

struct Restriction {
    public let key:String
    public let mandatory:Bool
    public let regex:String?
    public let min:Int
    public let max:Int
    public let size_min:Int?
    public let size_max:Int?
    
    private init(key:String, mandatory:Bool = false, regex:String? = nil, min: Int = 0 ,max: Int = Int.max , size_min:Int = 0, size_max:Int = Int.max) {
        self.key = key
        self.mandatory = mandatory
        self.regex = regex
        self.min = min
        self.max = max
        self.size_min = size_min
        self.size_max = size_max
    }
    
    static func String(key:String, mandatory:Bool, regex:String?, min:Int, max:Int) -> Restriction {
        return Restriction(key:key, mandatory:mandatory, regex:regex, min:min ,max: max)
    }
    
    static func StringArray(key:String, mandatory:Bool, regex:String?, min:Int, max:Int, size_min:Int, size_max:Int) -> Restriction {
        return Restriction(key:key, mandatory:mandatory, regex:regex, min:min, max:max, size_min:size_min ,size_max:size_max)
    }
    
    static func Number(key:String, mandatory:Bool,min:Int, max:Int) -> Restriction {
        return Restriction(key:key, mandatory:mandatory, min:min, max:max)
    }
    
    static func NumberArray(key:String, mandatory:Bool, min:Int, max:Int, size_min: Int, size_max:Int) -> Restriction {
        return Restriction(key:key, mandatory:mandatory, min:min, max: max, size_min:size_min, size_max:size_max)
    }
    
    static func Bool(key:String, mandatory:Bool) -> Restriction {
        return Restriction(key:key, mandatory:mandatory)
    }
    
    static func Dictionary(key:String, mandatory:Bool) -> Restriction {
        return Restriction(key:key, mandatory:mandatory)
    }
    
    static func DictionaryArray(key:String, mandatory:Bool, size_min:Int, size_max:Int) -> Restriction {
        return Restriction(key:key, mandatory:mandatory, size_min:size_min, size_max:size_max)
    }
}
