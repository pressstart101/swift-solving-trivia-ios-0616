//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(objDictionary:Dictionary<String,String>) -> String{
        
        for (key, value) in objDictionary {
            
            //make array of key and array of values
            var keyLetters = Array(key.lowercaseString.characters)
            var valueLetters = Array(value.lowercaseString.characters)
            
            
            
            
            valueLetters = valueLetters.filter{ $0 != " " }
            keyLetters = keyLetters.filter{ $0 != " " }
            var matchFound = false

            //iterate over keys
            for letterInKey in keyLetters {
                if valueLetters.contains(letterInKey) {
                    print("became true \(String(valueLetters))")
                    matchFound = true
                    
                }
                continue
            }
            
            if !matchFound {
                return key
            }            
        }
        return ""
        /*
         
         write your function here
         
         */
        
    }
}
