# KocomojoSDK for iOS

<div class="objc">
  <p style="font-size:20px;"><a href="https://github.com/KocomojoLLC/KocomojoSDK/tree/master/Examples/SimpleExample">Objective-C Example Source Code</a></font>
</div>

<div class="swift">
  <p style="font-size:20px;"><a href="https://github.com/KocomojoLLC/KocomojoSDK/tree/master/Examples/SimpleExampleSwift">Swift Example Source Code</a></font>
</div>

## Installation

&nbsp;

### Carthage 
KocomojoSDK is Carthage compatible as a prebuilt framework.  To install it, simply add the following line to your Cartfile: 

```
github "KocomojoLLC/KocomojoSDK"
```

<div class="swift">
<p>Add this line to your `-Bridging-Header.h`:</p>
<pre class="hljs"><code>#import &lt;KocomojoSDK/KocomojoSDK.h&gt;</code></pre>
</div>

### Cocoapods 
KocomojoSDK is available through [CocoaPods](https://cocoapods.org/pods/KocomojoSDK). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KocomojoSDK', '> 0.9.0'
```

<div class="swift">
<p>Make sure to uncomment this line:</p>

<pre class="hljs"><code>use_frameworks!</code></pre>
</div>

&nbsp;


#### Cocoapod Gem

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

  <pre class="hljs"><code>KocomojoSDK &#42;sharedInstance = [KocomojoSDK sharedInstance];
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
sharedInstance.apiKey = "YOUR_API_KEY_HERE";
sharedInstance.radiusInMiles = 15.0; // set it to number of miles
sharedInstance.showPushNotifications = true; // this is optional, more information below</code></pre>
</div>

&nbsp;

### API Key validation

You can validate your api key directly by calling 

<div class="objc">
<pre class="hljs"><code>[[KocomojoSDK sharedInstance]validateApiKey:^(BOOL isValid) { ... }</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>KocomojoSDK.sharedInstance().validateApiKey { (valid: Bool) in ...</code></pre>
</div>

Alternatively you can also look for an error message in logs.

&nbsp;

# Experience Or Button

&nbsp;

The user can enter KocomojoSDK's interface either via an Experience or a Button.  Only one of the two can exist per app. 

If the entire app is based on KocmomojoSDK (i.e. the first thing the user would see would be a screen designed in the editor), then you'd want to use `KocomojoExperience`.  

If the app has existing functionality outside of KocomojoSDK, then your app will use `KocomojoButton` as it's entry point.

&nbsp;

<a href="/experience.html" style="font-size: 2em;">Go to Experience Docs</a> <span style="font-size: 2em;">&nbsp;|&nbsp;</span> 
<a href="/button.html" style="font-size: 2em;">Go to Button Docs</a>

&nbsp;