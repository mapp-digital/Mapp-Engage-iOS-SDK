Pod::Spec.new do |s|

  s.name         = "MappSDK"
  s.version      = "6.0.11"
  s.cocoapods_version = '>= 1.10'
  s.summary      = "Mapp SDK enables developers to harnest the full power of Mapp Engage Platform on their iOS applications."
  s.description  = 	<<-DESC
  					Mapp SDK enables push notification in your iOS application, for engaging your application users and increasing retention.
                   	DESC
  s.homepage     = "https://mapp.com"
  s.license      = { :type => "Custom", :file => "MappLicence.txt" }
  s.author       = { "Mapp Digital" => "https://mapp.com/contact-us/" }
  s.source       = { :git => "https://github.com/MappCloud/MappSDK.git", :tag => "#{s.version}" }
  s.ios.framework = 'UserNotifications', 'WebKit'
  s.platform     = :ios, "10.0"
  s.ios.vendored_frameworks = "SDK/AppoxeeSDK.xcframework"
  s.preserve_paths = 'SDK/AppoxeeSDK.xcframework'
  s.resource = 'SDK/AppoxeeSDKResources.bundle'
  s.requires_arc = true

end
