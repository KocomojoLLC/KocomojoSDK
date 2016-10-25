# KocomojoSDK

## Installation

KocomojoSDK is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KocomojoSDK', :git => 'https://github.com/KocomojoLLC/KocomojoSDK'
```

## Cocoapod Kocomojo Gem

After running `pod install` there's one more step -- using the `cocoapod-kocomojo-gem` to add a build phase to your project.  It can be done with one line: 

`curl https://s3-us-west-2.amazonaws.com/assets.kocomojo.com/install.sh -s | sh`

This will install and run:

`pod kocomojo-sdk`.  

If there's more than one `.xcodeproj` in your directory you'll need to specify it like: 

`pod kocomojo-sdk MyProject.xcodeproj`.


## Next Steps

- [Implementing KocomojoSDK](https://github.com/KocomojoLLC/KocomojoSDK/wiki/1.-Implementing-KocomojoSDK)
- [Adding Notifications for KocomojoSDK](https://github.com/KocomojoLLC/KocomojoSDK/wiki/2.-Adding-Notifications-for-KocomojoSDK)

## Author

Elijah Windsor, ewindsor@gmail.com

## License

KocomojoSDK is available under the MIT license. See the LICENSE file for more info.
