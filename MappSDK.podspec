Pod::Spec.new do |s|

  s.name         = "MappSDK"
  s.version      = "6.0.4"
  s.summary      = "Mapp SDK enables developers to harnest the full power of Mapp Engage Platform on their iOS applications."
  s.description  = 	<<-DESC
  					Mapp SDK enables push notification in your iOS application, for engaging your application users and increasing retention.
                   	DESC
  s.homepage     = "https://mapp.com"
  s.license      = { :type => "Custom", :file => "MappLicence.txt" }
  s.author       = { "Mapp Digital" => "https://mapp.com/contact-us/" }
  s.source       = { :git => "https://github.com/MappCloud/MappSDK.git", :tag => "6.0.4" }
  s.ios.framework = 'UserNotifications'
  s.platform     = :ios, "10.0"
  s.ios.vendored_frameworks = "SDK/AppoxeeSDK.xcframework"
  s.preserve_paths = 'SDK/AppoxeeSDK.xcframework'
  s.resource_bundle = { 'AppoxeeSDKResources' => 'SDK/AppoxeeSDKResources.bundle' }
  s.requires_arc = true

end
