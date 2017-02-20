#
# Be sure to run `pod lib lint CustomTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CustomTextField'
  s.version          = '1.0.2'
  s.summary          = 'CustomTextField is used to mask the text entered in textfield(e.g: Credit card number -> "**** **** **** 1111").'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
Last login: Mon Feb 20 10:57:36 on ttys000
SA-MAC-019:~ rajan.shah$ cd /Users/rajan.shah/Documents/SA Projects/iOS/Github/CustomTextField/CustomTextField
-bash: cd: /Users/rajan.shah/Documents/SA: No such file or directory
SA-MAC-019:~ rajan.shah$ cd "/Users/rajan.shah/Documents/SA Projects/iOS/Github/CustomTextField/CustomTextField"
SA-MAC-019:CustomTextField rajan.shah$ cd 
.DS_Store                .travis.yml              LICENSE
.git/                    CustomTextField/         README.md
.gitignore               CustomTextField.podspec  _Pods.xcodeproj/
.swift-version           Example/                 
SA-MAC-019:CustomTextField rajan.shah$ vi CustomTextField.podspec 
SA-MAC-019:CustomTextField rajan.shah$ vi README.md 
SA-MAC-019:CustomTextField rajan.shah$ git add .
SA-MAC-019:CustomTextField rajan.shah$ git commit -m "Update Description"
[master 7e33a19] Update Description
 2 files changed, 2 insertions(+), 2 deletions(-)
SA-MAC-019:CustomTextField rajan.shah$ git push
Counting objects: 4, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 551 bytes | 0 bytes/s, done.
Total 4 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/rajanshahsa/CustomTextField.git
   ec521e7..7e33a19  master -> master
SA-MAC-019:CustomTextField rajan.shah$ vi README.md 

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

                       DESC
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
