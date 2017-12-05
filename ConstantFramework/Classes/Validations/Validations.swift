//
//  Validations.swift
//  ConstantFramework
//
//  Created by Apple on 28/11/17.
//

import Foundation
import UIKit

public class Validations : NSObject{
    
    public static let instance = Validations()
    
    public func isRestrictNumberCharacters(string:String)->Bool{
        let invalidCharacters = NSCharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public func isRestrictAlphaCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public func isRestrictEmailWithAtTheRateCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_-.@").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public func isRestrictEmailWithoutAtTheRateCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_-.").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public func isRestrictAlphaNumericCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890,#. ").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public func isRestrictCityCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public func isRestrictAddressCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_-. /\\|,:'").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public func onlyNumeric(persistanceTextString:String,maximumTextLength:Int) -> Bool {
        var returnValue = false
        if (persistanceTextString.characters.count>maximumTextLength) {
            return false
        }
        if (persistanceTextString.characters.count==1 && persistanceTextString == "0") {
            return false
        }
        else
        {
            let alphaNum = "[0-9]+"
            let regexTest = NSPredicate(format: "SELF MATCHES %@", alphaNum)
            
            if (regexTest.evaluate(with: persistanceTextString)==false) {
                if (persistanceTextString.characters.count==0) {
                    return true
                }
                returnValue = false
            }
            else
            {
                returnValue = true
            }
        }
        
        return returnValue
    }
    
    public func onlyAlphabets(persistanceTextString:String,maximumTextLength:Int) -> Bool {
        var returnValue = false
        
        if (persistanceTextString.characters.count>maximumTextLength) {
            return false
        }
        let alphaNum = "[a-zA-Z]+"
        let regexTest = NSPredicate(format: "SELF MATCHES %@", alphaNum)
        
        if (regexTest.evaluate(with: persistanceTextString)==false) {
            if (persistanceTextString.characters.count==0) {
                return true
            }
            returnValue = false
        }
        else
        {
            returnValue = true
        }
        
        return returnValue
    }
}




