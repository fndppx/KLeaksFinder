#
# Be sure to run `pod lib lint KLeaksFinder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KLeaksFinder'
  s.version          = '0.1.0'
  s.summary          = 'MLeaksFinder 的内存泄漏检测'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  内存泄漏检测.
                       DESC

  s.homepage         = 'https://github.com/fndppx/KLeaksFinder'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'keyan' => '270022748@qq.com' }
  s.source           = { :git => 'https://github.com/fndppx/KLeaksFinder.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'KLeaksFinder/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KLeaksFinder' => ['KLeaksFinder/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
