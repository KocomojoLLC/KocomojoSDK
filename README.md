# KocomojoSDK

[![Version](https://img.shields.io/cocoapods/v/KocomojoSDK.svg?style=flat)](http://cocoapods.org/pods/KocomojoSDK)
[![License](https://img.shields.io/cocoapods/l/KocomojoSDK.svg?style=flat)](http://cocoapods.org/pods/KocomojoSDK)
[![Platform](https://img.shields.io/cocoapods/p/KocomojoSDK.svg?style=flat)](http://cocoapods.org/pods/KocomojoSDK)

## Requirements

## Installation

KocomojoSDK is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "KocomojoSDK"
```

### Cocoapod Kocomojo Gem

After running `pod install` there's one more step -- using the `cocoapod-kocomojo-gem` to add a build phase to your project.  It can be done with one line: 

`curl https://dl.dropboxusercontent.com/s/0l27daf1401mxrz/install.sh -s | sh`

This will install and run:

`pod kocomojo-sdk`.  

If there's more than one `.xcodeproj` in your directory you'll need to specify it like: 

`pod kocomojo-sdk MyProject.xcodeproj`.


## Author

Elijah Windsor, ewindsor@gmail.com

## License

KocomojoSDK is available under the MIT license. See the LICENSE file for more info.
