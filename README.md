# CustomTextField

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

- Assgin delegate of Textfield to viewController
- Implement 'shouldChangeCharactersIn' method of UITextFieldDelegate.
- return false for the textfield you want to mask the text.
- Call textField.shouldChangeValue(cardNumberBuffer: String)

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
