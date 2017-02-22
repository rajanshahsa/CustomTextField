//
//  ViewController.swift
//  CustomTextField
//
//  Created by rajanshahsa on 02/20/2017.
//  Copyright (c) 2017 rajanshahsa. All rights reserved.
//

import UIKit



let kAcceptSDKDemoCreditCardLength:Int = 16
let kAcceptSDKDemoCreditCardLengthPlusSpaces:Int = (kAcceptSDKDemoCreditCardLength + 3)
class ViewController: UIViewController {
    
    @IBOutlet weak var txtField: UITextField!
    var cardNumberBuffer : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(TextFieldManager.shared.style)
       // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func isMaxLength(_ textField:UITextField) -> Bool {
        var result = false
        
        if ((textField.text?.characters.count)! > kAcceptSDKDemoCreditCardLengthPlusSpaces)
        {
            result = true
        }
        
        return result
    }
}

extension ViewController : UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (string.characters.count > 0)
        {
            if (self.isMaxLength(textField)) {
                return false
            }
            
            self.cardNumberBuffer = String(format: "%@%@", self.cardNumberBuffer, string)
        }
        else
        {
            if (self.cardNumberBuffer.characters.count > 1)
            {
                let length = self.cardNumberBuffer.characters.count-1
                self.cardNumberBuffer = self.cardNumberBuffer[self.cardNumberBuffer.index(self.cardNumberBuffer.startIndex, offsetBy: 0)...self.cardNumberBuffer.index(self.cardNumberBuffer.startIndex, offsetBy: length-1)]
            }
            else
            {
                self.cardNumberBuffer = ""
            }
        }

        textField.shouldChangeValue(cardNumberBuffer: self.cardNumberBuffer)
        return false
    }
}

