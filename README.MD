Appoxee SDK
===========
This repository contains the Mapp iOS SDK.

Integration
-----------

**Cocoa pods**

```ruby
target 'project_name' do
    pod 'MappSDK'
end
```

**OR**


```ruby
target 'project_name' do
    pod 'MappSDK', :git => 'https://github.com/MappCloud/MappSDK.git', :tag => '6.0.4'
end
```

**Manual**

* Drag and drop the ```AppoxeeSDK.framework``` to your project.
* Drag and drop the ```AppoxeeSDKResources.bundle``` to your project.
* Link ```UserNotifications.framework``` to your project.


Configuration file
------------------

Make sure to provide an ```AppoxeeConfig.plist``` file.

![Image of AppoxeeConfiguration.plist](https://api.media.atlassian.com/file/1ff3fd1a-09a0-4683-a4ec-c470e2084c03/image?mode=full-fit&client=44cad860-1de4-4827-af16-bcbe31ebb27d&token=eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiI0NGNhZDg2MC0xZGU0LTQ4MjctYWYxNi1iY2JlMzFlYmIyN2QiLCJhY2Nlc3MiOnsidXJuOmZpbGVzdG9yZTpmaWxlOjFmZjNmZDFhLTA5YTAtNDY4My1hNGVjLWM0NzBlMjA4NGMwMyI6WyJyZWFkIl19LCJleHAiOjE2MzY5ODMyNjUsIm5iZiI6MTYzNjk3OTkwNX0.z1Ih1rDmECDbjeIC-g5EY7mXZzww5ww04EXEMtV61zM)

```<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>inapp</key>
    <dict>
        <key>custom_fields</key>
        <array>
            <string>customString</string>
            <string>customNumber</string>
            <string>customDate</string>
        </array>
        <key>media_timeout</key>
        <integer>5</integer>
    </dict>
    <key>sdk</key>
    <dict>
        <key>app_id</key>
        <string>263177</string>
        <key>dmc_system_id</key>
        <integer>55</integer>
        <key>sdk_key</key>
        <string>5c59a5b6b52eb2.62524838</string>
        <key>jamie_url</key>
        <string>jamie-test.shortest-route.com</string>
        <key>is_eu</key>
        <true/>
        <key>open_landing_page_inside_app</key>
        <false/>
    </dict>
</dict>
</plist>
```

Implementation
--------------

**Objective-C**
```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[Appoxee shared] engageAndAutoIntegrateWithLaunchOptions:launchOptions andDelegate:nil with:EMC_US];

    return YES;
}
```

**Swift**
```swift
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

            Appoxee.shared()?.engageAndAutoIntegrate(launchOptions: launchOptions, andDelegate: nil, with: .EMC_US)

    return true
}
```

License
-------
https://mapp.com/contracts/
