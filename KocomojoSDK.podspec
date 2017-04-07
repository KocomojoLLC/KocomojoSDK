#
# Be sure to run `pod lib lint KocomojoSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KocomojoSDK'
  s.version          = '0.9.848'
  s.summary          = 'The Official KocomojoSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
KocomojoSDK leverages geofencing/GPS location and iBeacons to trigger native user experiences 
designed by the client with our web editor.  
DESC

  s.homepage         = 'https://github.com/KocomojoLLC/KocomojoSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author           = { 'Elijah Windsor' => 'ewindsor@gmail.com' }
  s.source           = { :git => 'https://github.com/KocomojoLLC/KocomojoSDK.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kocomojous'
  s.documentation_url = 'http://kocomojo-sdk.surge.sh/'

  s.ios.deployment_target = '8.1'

  # s.source_files = 'KocomojoSDK/Classes/**/*'
  s.ios.vendored_framework = 'KocomojoSDK/KocomojoSDK.framework'
end
