# KocomojoSDK for iOS
&nbsp;

## Installation

KocomojoSDK is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KocomojoSDK'
```

If this is a Swift project uncomment this line::

```ruby
use_frameworks!
```

&nbsp;


### Run Kocomojo SDK Gem

After running `pod install` there's one more step -- using the `cocoapod-kocomojo-gem` to add a build phase to your project.  To install:

```ruby
gem install cocoapods-kocomojo-sdk
```

then run: 

```ruby
pod kocomojo-sdk
```

If there's more than one `.xcodeproj` in your directory you'll need to specify it like: 

```ruby
pod kocomojo-sdk MyProject.xcodeproj
```


