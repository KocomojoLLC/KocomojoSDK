# KocomojoSDK for iOS
&nbsp;

## Installation

KocomojoSDK is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KocomojoSDK'
```

<div class="swift">
<p>Make sure to uncomment this line:</p>

<pre class="hljs"><code>use_frameworks!</code></pre>
</div>

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

&nbsp;

### API Key validation

You can validate your api key directly by calling 

<div class="objc">
<pre class="hljs"><code>[[KocomojoSDK sharedInstance]validateApiKey:^(BOOL isValid) { ... }</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>sharedInstance.validateApiKey { (valid: Bool) in ...</code></pre>
</div>

Alternatively you can also look for an error message in logs.

&nbsp;

## Adding the Button

<div class="objc">
<p>In the View Controller where you'd like to put the button import KocomojoButton.h:</p>

<p>`#import <KocomojoSDK/KocomojoButton.h>`</p>

<p>Inside of `viewDidLoad`:</p>

<pre class="hljs"><code>KocomojoButton *button = [[KocomojoButton alloc]initWithFrame:(CGRect){0, 0, 200, 200}];
button.center = self.view.center;
[button setEnabledImageName:@"buttonEnabled"];    // both images are 
[button setDisabledImageName:@"buttonDisabled"];  // from xcassets
[self.view addSubview:button];
</code></pre>
</div>

<div class="swift">
<p>In the View Controller where you'd like to put the button import import KocomojoSDK.KocomojoButton:</p>

<p>`import KocomojoSDK.KocomojoButton`</p>

<p>Inside of `viewDidLoad()`:</p>

<pre class="hljs"><code>let button = KocomojoButton(frame:CGRect(x: 0, y: 0, width: 200, height: 200));
button.center = self.view.center;
button.enabledImageName = "buttonEnabled";    // both images are 
button.disabledImageName = "buttonDisabled";  // from xcassets
self.view.addSubview(button);
</code></pre>
</div>

You can also implement this in Storyboard, just create a View inside the ViewController and change it's Class to `KocomojoButton`.  
This can then be connected to an `IBOutlet` and enabled / disabled images can be assigned like above.  

&nbsp;

## Info.plist 

These are the key/value pairs you'll need to add to your Info.plist: 

**NSLocationAlwaysUsageDescription** ([more info](https://developer.apple.com/library/content/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html#//apple_ref/doc/uid/TP40009251-SW18))

For example: 

> "Please enable location tracking in order to receive promotion notifications"

**NSBluetoothPeripheralUsageDescription** ([more info](https://developer.apple.com/library/content/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html#//apple_ref/doc/uid/TP40009251-SW20))

For example:

> "Please enable bluetooth to monitor beacons in order to receive promotion notifications"

&nbsp;

## Local Push Notifications 

You can have KocomojoSDK send Push Notifications whenever an Experiences comes in range. 

To enable this:

<div class="objc">
<pre class="hljs"><code>[[KocomojoSDK sharedInstance]setShowPushNotifications:YES];</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>KocomojoSDK.sharedInstance().showPushNotifications = true;</code></pre>
</div>


&nbsp;

### Push Templates

There are 2 templates that can be customized by the client.  One is for `pushTemplateSingular` (when there's one Experience in range) and the other is `pushTemplatePlural` (when there's more than one Experience in range.)

They can be assigned like:

<div class="objc">
<pre class="hljs"><code>[[KocomojoSDK sharedInstance] setPushTemplateSingular:@"An awesome experience __NAME__ has just entered your sphere"];
[[KocomojoSDK sharedInstance] setPushTemplatePlural:@"__NAMES__ are all available!!!"];</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>KocomojoSDK.sharedInstance().pushTemplateSingular = "An awesome experience __NAME__ has just entered your sphere";
KocomojoSDK.sharedInstance().pushTemplatePlural = "__NAMES__ are all available!!!";</code></pre>
</div>

&nbsp;

### Open app from Push

<div class="objc">
<p>When the user opens a local push notification generated by the SDK, you can have it automatically "touch" the button for them by implementing the following:</p>
<pre class="hljs"><code>- (void)application:(UIApplication &#42;)application didReceiveLocalNotification:(UILocalNotification &#42;)notification
{
  [[KocomojoSDK sharedInstance] didReceiveLocalNotification:notification];
}</code></pre>
</div>

<div class="swift">
<p>When the user opens a local push notification generated by the SDK, you can have it automatically "touch" the button for them by implementing the following:</p>
<pre class="hljs"><code>func application(_ application: UIApplication, didReceive notification: UILocalNotification)
{
  KocomojoSDK.sharedInstance().didReceive(notification);
}</code></pre>
</div>



Note that if you want to generate your own Push Notifications using the names of the experiences as they come into range, you can implement a listener for `KocomojoExperiencesInRangeNotification` (more information in the next section)

&nbsp;

## NSNotifications 

<div class="row">
  <div class="col-xs-6">Button Touched</div><div class="col-xs-6">KocomojoButtonTouchedNotification</div>
</div>

* Button Enabled (`KocomojoButtonEnabledNotification`) and 
* Full Screen View Closed (`KocomojoFullScreenViewClosedNotification`)
* Experiences In Range (`KocomojoExperiencesInRangeNotification`) 
* Bluetooth Disabled (`KocomojoBluetoothDisabledNotification`)

&nbsp;

### Button Touched

This simply tells when the button is touched, whether or not it is enabled.  

```
[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(buttonTouched:) name:KocomojoButtonTouchedNotification object:nil];

...

- (void)buttonTouched:(NSNotification *)notification {
  NSLog(@"Button Touched!");
}
```

&nbsp;

### Button Enabled

This is called when the button is either enabled or disabled.  The `NSDictionary` in the `notification.object` contains `enabled`. 

```
[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(buttonEnabled:) name:KocomojoButtonEnabledNotification object:nil];

...

- (void)buttonEnabled:(NSNotification *)notification {
  NSDictionary *notificationDic = notification.object;
  
  if([notificationDic[@"enabled"]boolValue] == YES) {
    NSLog(@"Enabled!!");
  } else {
    NSLog(@"Disabled!!");
  }
}
```

&nbsp;

### Full Screen View Closed

This is called when the full screen view is closed.

```
[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(fullScreenViewClosed:) name:KocomojoFullScreenViewClosedNotification object:nil];

...

- (void)fullScreenViewClosed:(NSNotification *)notification {
  NSLog(@"Full Screen View Closed");
}
```

&nbsp;


### Experiences In Range

When experiences come in range (or go out of range) this will be posted.  The `notification.data` will be an array containing `id`, `name`, and `inRange` (true or false) of each experience.  

One thing to note is that this will only be posted with experiences who's `inRange` status changes.  Once an experiences comes `inRange`, the only other time it will appears in the `notification.data` array is when `inRange` becomes false.  

```
[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(experiencesInRange:) name:KocomojoExperiencesInRangeNotification object:nil];

...

- (void)experiencesInRange:(NSNotification *)notification {
  NSArray *experiencesInRangeArray = notification.object;
  
  NSLog(@"Experiences In Range: %@", experiencesInRangeArray);
}
```

Outputs:

```
Experiences In Range: (
    {
        id = 155;
        inRange = 0;
        name = Quiznos;
        boundaries =         (
                        {
                id = 6;
                latitude = "35.898231";
                longitude = "-78.51344";
                maxLatitude = "35.97057645175178";
                maxLongitude = "-78.4241312022986";
                minLatitude = "35.82588554824822";
                minLongitude = "-78.60274879770142";
                radius = 5;
                radiusMetric = "<null>";
                type = geoshape;
            }
        );
    },
        {
        id = 163;
        inRange = 0;
        name = "Park Plaza Cinema Promo";
        boundaries = ...
    },
        {
        id = 163;
        inRange = 0;
        name = "Park Plaza Cinema Promo";
        boundaries = ...
    }
)
```

&nbsp;

### Bluetooth Off

This is called if the user launches the app with Bluetooth disabled, or if they disable Bluetooth while in the app.

```
[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(bluetoothDisabled:) KocomojoBluetoothDisabledNotification object:nil];

...

- (void)bluetoothDisabled:(NSNotification *)notification {
  // Notify the user to turn Bluetooth on
}
```