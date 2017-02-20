//
//  CustomTextField.swift
//  CreditCard
//
//  Created by rajan.shah on 20/02/17.
//  Copyright © 2017 Solution Analysts. All rights reserved.
//

import Foundation

public extension UITextField {
    
    
    public func shouldChangeValue(){
        var value = String()
        let kAcceptSDKDemoSpace:String = " "
        
        let length = self.text?.characters.count
        let kAcceptSDKDemoCreditCardLength:Int = 16
        let kAcceptSDKDemoCreditCardLengthPlusSpaces:Int = (kAcceptSDKDemoCreditCardLength + 3)
        
        let kAcceptSDKDemoCreditCardObscureLength:Int = (kAcceptSDKDemoCreditCardLength - 4)
        
        for (i, _) in (self.text?.characters.enumerated())! {
            
            // Reveal only the last character.
            if (length! <= kAcceptSDKDemoCreditCardObscureLength) {
                if (i == (length! - 1)) {
                    let charIndex = self.text?.index((self.text?.startIndex)!, offsetBy: i)
                    let tempStr = String((self.text?.characters.suffix(from: charIndex!))!)
                    //let singleCharacter = String(tempStr.characters.first)
                    
                    value = value + tempStr
                } else {
                    value = value + "●"
                }
            } else {
                if (i < 12) {
                    value = value + "●"
                } else {
                    let charIndex = self.text?.index((self.text?.startIndex)!, offsetBy: i)
                    let tempStr = String((self.text?.characters.suffix(from: charIndex!))!)
                    //let singleCharacter = String(tempStr.characters.first)
                    //let singleCharacter = String(tempStr.characters.suffix(1))
                    
                    value = value + tempStr
                    break
                }
            }
            
            //After 4 characters add a space
            if (((i + 1) % 4 == 0) && (value.characters.count < kAcceptSDKDemoCreditCardLengthPlusSpaces)) {
                value = value + kAcceptSDKDemoSpace
            }
            
        }
    }
}
