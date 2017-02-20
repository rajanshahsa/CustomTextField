# CustomTextField
CustomTextField is used to mask the text entered in textfield(e.g: Credit card number -> "**** **** **** 1111").
[![CI Status](http://img.shields.io/travis/rajanshahsa/CustomTextField.svg?style=flat)](https://travis-ci.org/rajanshahsa/CustomTextField)
[![Version](https://img.shields.io/cocoapods/v/CustomTextField.svg?style=flat)](http://cocoapods.org/pods/CustomTextField)
[![License](https://img.shields.io/cocoapods/l/CustomTextField.svg?style=flat)](http://cocoapods.org/pods/CustomTextField)
[![Platform](https://img.shields.io/cocoapods/p/CustomTextField.svg?style=flat)](http://cocoapods.org/pods/CustomTextField)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

### 1. CocoaPods

UIRainView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CustomTextField"
```

### 2. Manual

Add `CustomTextField.swift` file into your project.

## Usage

### 1. Import CustomTextField in any class you want to use it.

import CustomTextField

### 1.1. Add Following code to your ViewController

- Assgin Textfield's delegate to viewController
- Declare a String variable to hold Textfield value for later purpose.
```swift
var cardNumberBuffer : String = ""
```
- Implement 'shouldChangeCharactersIn' method of UITextFieldDelegate.
- return false for the textfield you want to mask the text.
- Call textField.shouldChangeValue(cardNumberBuffer: String)
```swift
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

func isMaxLength(_ textField:UITextField) -> Bool {
var result = false

if ((textField.text?.characters.count)! > 19)
{
result = true
}

return result
}
```


<!--CustomTextField is available through [CocoaPods](http://cocoapods.org). To install-->
<!--it, simply add the following line to your Podfile:-->
<!---->
<!--```ruby-->
<!--pod "CustomTextField"-->
<!--```-->

## Author

rajanshahsa, rajan.shah@solutionanalysts.com

## License

CustomTextField is available under the MIT license. See the LICENSE file for more info.
