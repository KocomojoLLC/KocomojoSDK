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

<p style="font-size:2em;">Which implementation do you plan to use in your app?</p>

<div class="btn-group btn-toggle" id="implementation-toggle" style="left:50%;margin-left:-25%;"> 
  <button class="btn btn-lg btn-default">Experience</button>
  <button class="btn btn-lg btn-default">Button</button>
</div>

&nbsp;

## Using KocomojoExperience

<div class="objc">
<p>In the app's root View Controller, import KocomojoExperience.h:</p>
<p>`#import <KocomojoSDK/KocomojoSDK.h>`</p>
<p>Inside of `viewDidLoad`:</p>
<pre class="hljs"><code>KocomojoExperience *experienceView = [[KocomojoExperience alloc]initWithFrame:self.view.frame];
[self.view addSubview:experienceView];</code></pre>
</div>

<div class="swift">
<p>In the app's root View Controller, import KocomojoSDK.KocomojoExperience:</p>
<p>`import KocomojoSDK.KocomojoExperience`</p>
<p>Inside of `viewDidLoad()`:</p>
<pre class="hljs"><code>let experienceView = KocomojoExperience(frame:self.view.frame);
self.view.addSubview(experienceView);</code></pre>
</div>

&nbsp;

## Using KocomojoButton

<div class="objc">
<p>In the View Controller where you'd like to put the button import KocomojoButton.h:</p>

<p>`#import <KocomojoSDK/KocomojoButton.h>`</p>

<p>Inside of `viewDidLoad`:</p>

<pre class="hljs"><code>KocomojoButton &#42;button = [[KocomojoButton alloc]initWithFrame:(CGRect){0, 0, 200, 200}];
button.center = self.view.center;
[button setEnabledImageName:@"buttonEnabled"];    // both images are 
[button setDisabledImageName:@"buttonDisabled"];  // from xcassets
[self.view addSubview:button];
</code></pre>
</div>

<div class="swift">
<p>In the View Controller where you'd like to put the button import KocomojoSDK.KocomojoButton:</p>

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

### Auto Show Experiences (Kocomojo Button only)

You can have experiences automatically pop up once the user is within range. 

To do this: 

<div class="objc">
<pre class="hljs"><code>[[KocomojoSDK sharedInstance]setAutomaticallyShowExperiences:YES];</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>KocomojoSDK.sharedInstance().automaticallyShowExperiences = true;</code></pre>
</div>

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
<p>And also:</p>
<pre class="hljs"><code>- (void)application:(UIApplication &#42;)application didRegisterUserNotificationSettings:(UIUserNotificationSettings &#42;)notificationSettings
{
  [[KocomojoSDK sharedInstance] didRegisterUserNotificationSettings:notificationSettings];
}</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>KocomojoSDK.sharedInstance().showPushNotifications = true;</code></pre>
<p>And also:</p>
<pre class="hljs"><code>func application(_ application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings)
{
  KocomojoSDK.sharedInstance().didRegister(notificationSettings);
}</code></pre>
</div>


&nbsp;


### Frequency

You change the frequency of push notifications - how many seconds will need to pass after a push notification for another one to occur.  (Any notifications that would occur during this time is ignored as to not overwhelm the client.)  This defaults to 60 &#42; 60 &#42; 2 = 3600, or 2 hours.

<div class="objc">
<pre class="hljs"><code>[[KocomojoSDK sharedInstance]setMinimumSecondsBetweenPushNotifications:[NSNumber numberWithInteger: 3600]];</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>KocomojoSDK.sharedInstance().minimumSecondsBetweenPushNotifications = 3600</code></pre>
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

## Notifications 

&nbsp;

<div class="objc">
<p>Button Touched (`KocomojoButtonTouchedNotification`)</p>
<p>Button Enabled (`KocomojoButtonEnabledNotification`)</p>
<p>Full Screen View Closed (`KocomojoFullScreenViewClosedNotification`)</p>
<p>Experiences In Range (`KocomojoExperiencesInRangeNotification`)</p>
<p>Bluetooth Disabled (`KocomojoBluetoothDisabledNotification`)</p>
</div>

<div class="swift">
<p>Button Touched (`Notification.Name.KocomojoButtonTouched`)</p>
<p>Button Enabled (`Notification.Name.KocomojoButtonEnabled`)</p>
<p>Full Screen View Closed (`Notification.Name.KocomojoFullScreenViewClosed`)</p>
<p>Experiences In Range (`Notification.Name..KocomojoExperiencesInRange`)</p>
<p>Bluetooth Disabled (`Notification.Name.KocomojoBluetoothDisabled`)</p>
</div>

&nbsp;

### Button Touched

This simply tells when the button is touched, whether or not it is enabled.  

<div class="objc">
<pre class="hljs"><code>[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(buttonTouched:) name:KocomojoButtonTouchedNotification object:nil];

...

- (void)buttonTouched:(NSNotification &#42;)notification {
  NSLog(@"Button Touched!");
}
</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>NotificationCenter.default.addObserver(self, selector: #selector(self.buttonTouched), name: Notification.Name.KocomojoButtonTouched, object: nil);

...

func buttonTouched(notification: Notification) {
    NSLog("Button Touched!");
}
</code></pre>
</div>

&nbsp;

### Button Enabled

This is called when the button is either enabled or disabled.  The `NSDictionary` in the `notification.object` contains `enabled`. 

<div class="objc">
<pre class="hljs"><code>[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(buttonEnabled:) name:KocomojoButtonEnabledNotification object:nil];

...

- (void)buttonEnabled:(NSNotification &#42;)notification {
  NSDictionary &#42;notificationDic = notification.object;
  
  if([notificationDic[@"enabled"]boolValue] == YES) {
    NSLog(@"Enabled!!");
  } else {
    NSLog(@"Disabled!!");
  }
}
</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>NotificationCenter.default.addObserver(self, selector: #selector(self.buttonEnabled), name: Notification.Name.KocomojoButtonEnabled, object: nil);

...

func buttonEnabled(notification: Notification) {
    let notificationDic = notification.object as! NSDictionary;
    let enabledNum = notificationDic["enabled"] as! NSNumber;
    
    if(enabledNum.boolValue) {
      NSLog("Enabled!");
    } else {
      NSLog("Disabled!");
    }
}
</code></pre>
</div>


&nbsp;

### Full Screen View Closed

This is called when the full screen view is closed.

<div class="objc">
<pre class="hljs"><code>[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(fullScreenViewClosed:) name:KocomojoFullScreenViewClosedNotification object:nil];

...

- (void)fullScreenViewClosed:(NSNotification &#42;)notification {
  NSLog(@"Full Screen View Closed");
}</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>NotificationCenter.default.addObserver(self, selector: #selector(self.fullScreenViewClosed), name: Notification.Name.KocomojoFullScreenViewClosed, object: nil);

...

func fullScreenViewClosed(notification: Notification) {
  NSLog(@"Full Screen View Closed");
}</code></pre>
</div>

&nbsp;


### Experiences In Range

When experiences come in range (or go out of range) this will be posted.  The `notification.data` will be an array containing `id`, `name`, and `inRange` (true or false) of each experience.  

One thing to note is that this will only be posted with experiences who's `inRange` status changes.  Once an experiences comes `inRange`, the only other time it will appears in the `notification.data` array is when `inRange` becomes false.  

<div class="objc">
<pre class="hljs"><code>[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(experiencesInRange:) name:KocomojoExperiencesInRangeNotification object:nil];

...

- (void)experiencesInRange:(NSNotification &#42;)notification {
  NSArray &#42;experiencesInRangeArray = notification.object;
  
  NSLog(@"Experiences In Range: %@", experiencesInRangeArray);
}</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>NotificationCenter.default.addObserver(self, selector: #selector(self.experiencesInRange), name: Notification.Name.KocomojoExperiencesInRange, object: nil);

...

func experiencesInRange(notification: Notification) {
  let experiencesInRangeArray = notification.object as! NSArray;

  NSLog("Experiences In Range: %@", experiencesInRangeArray);
}</code></pre>
</div>

&nbsp;

### Bluetooth Off

This is called if the user launches the app with Bluetooth disabled, or if they disable Bluetooth while in the app.

<div class="objc">
<pre class="hljs"><code>[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(bluetoothDisabled:) name:KocomojoBluetoothDisabledNotification object:nil];

...

- (void)bluetoothDisabled:(NSNotification &#42;)notification {
  // Notify the user to turn Bluetooth on
}</code></pre>
</div>

<div class="swift">
<pre class="hljs"><code>NotificationCenter.default.addObserver(self, selector: #selector(self.bluetoothDisabled), name: Notification.Name.KocomojoBluetoothDisabled, object: nil);

...

func bluetoothDisabled(notification: Notification) {
  // Notify the user to turn Bluetooth on
}</code></pre>
</div>
