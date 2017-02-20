#
# Be sure to run `pod lib lint CustomTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CustomTextField'
  s.version          = '1.0.0'
  s.summary          = 'A short description of CustomTextField.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
# UIRainView
[![CI Status](http://img.shields.io/travis/ZaidPathan/UIRainView.svg?style=flat)](https://travis-ci.org/ZaidPathan/UIRainView)
[![Version](https://img.shields.io/cocoapods/v/UIRainView.svg?style=flat)](http://cocoapods.org/pods/UIRainView)
[![License](https://img.shields.io/cocoapods/l/UIRainView.svg?style=flat)](http://cocoapods.org/pods/UIRainView)
[![Platform](https://img.shields.io/cocoapods/p/UIRainView.svg?style=flat)](http://cocoapods.org/pods/UIRainView)
![UIRainViewLogo](https://github.com/ZaidPathan/UIRainView/blob/master/Images/UIRainView_GitHubLogo.png)
## Demo
![UIRainView](https://github.com/ZaidPathan/UIRainView/blob/master/Images/UIRainView.gif)
## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.
## Requirements
## Installation
### 1. CocoaPods
UIRainView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod "UIRainView"
```
### 2. Manual
Add `UIRainView.swift` file into your project.
## Usage
### 1. Import UIRainView in any class you want to use it.
import UIRainView
### 2.1. Add using XIB or UIStoryboard
- Add UIView to your view.
- Give class name `UIRainView` to that UIView in Identity Inspactor.
- Go to attribute inspactor and give Rain String value (Default is 💧) and Rain fall interval (Default is 5).
- Connect IBOutlet of `UIRainView`
- **Start** rain by calling : `rainView?.rain()`
- **Stop** rain by calling : `rainView?.drizzle()`
### 2.2. Add direcly into the code.
```swift
import UIKit
import UIRainView
class ViewController: UIViewController {
var rainView:UIRainView?
override func viewDidLoad() {
super.viewDidLoad()
rainView = UIRainView()
rainView?.frame = view.frame
view.addSubview(rainView!)
rainView?.rainString = "💧🎊🎉❤️💝💜💙💚💛🍰"
rainView?.rainFallInterval = 7
rainView?.rain()   //Start raining
}
}
```
To **Stop** raining try following,
```swift
rainView?.drizzle()
```
  s.homepage         = 'https://github.com/rajanshahsa/CustomTextField'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rajanshahsa' => 'rajan.shah@solutionanalysts.com' }
  s.source           = { :git => 'https://github.com/rajanshahsa/CustomTextField.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CustomTextField/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CustomTextField' => ['CustomTextField/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
