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

&nbsp;

## Implementation 

<div class="objc">
  <p>Import KocomojoSDK.h in AppDelegate:</p>
  <p>`#import <KocomojoSDK/KocomojoSDK.h>`</p>

  <p>Add these lines in `application:didFinishLaunchingWithOptions:`: </p>

  <pre class="hljs"><code>KocomojoSDK *sharedInstance = [KocomojoSDK sharedInstance];
[sharedInstance setApiKey:@"YOUR_API_KEY_HERE"];
[sharedInstance setRadiusInMiles:[NSNumber numberWithFloat:15.0f]];  // set it to number of miles
[sharedInstance setShowPushNotifications:YES];  // this is optional, more information below</code>
</pre>
</div>

<div class="swift">
  <p>Import KocomojoSDK into AppDelegate.swift:</p>
  <p>`import KocomojoSDK`</p>

  <p>Add these lines in `application(_:didFinishLaunchingWithOptions:)`: </p>

  <pre class="hljs"><code>let sharedInstance: KocomojoSDK = KocomojoSDK.sharedInstance();
sharedInstance.apiKey = "***REMOVED***";
sharedInstance.radiusInMiles = 15.0; // set it to number of miles
sharedInstance.showPushNotifications = true; // this is optional, more information below</code></pre>
</div>

### API Key validation

You can validate your api key directly by calling `[[KocomojoSDK sharedInstance]validateApiKey:^(BOOL isValid) { ... }`.  Alternatively you can also look for `KocomojoSDK: Unable to authenticate, please check your API Key` in logs.