#
# Be sure to run `pod lib lint ObjCUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ObjCUtils'
  s.version          = '0.1.0'
  s.summary          = 'Objective C Data Structures and Utilities not provided by Cocoa by default'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A collection of Data Strcutures and utilities that we often need while writing with Objective C but are not provided by Cocoa iself. Some of the examples are a Concurrent NSDictionary and a Atomic NSInteger.
                       DESC

  s.homepage         = 'https://github.com/iamprabal/ObjCUtils'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iamprabal' => 'iamprabal@gmail.com' }
  s.source           = { :git => 'https://github.com/iamprabal/ObjCUtils.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ObjCUtils/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ObjCUtils' => ['ObjCUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
