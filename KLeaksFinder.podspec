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
  
  s.public_header_files = 'MLeaksFinder/MLeaksFinder.h', 'MLeaksFinder/NSObject+MemoryLeak.h'
    
#  s.requires_arc = false
#
#  s.requires_arc = [
#  'KLeaksFinder/Classes/FBRetainCycleDetector/FBRetainCycleDetector/Associations/FBAssociationManager.mm',
#  'KLeaksFinder/Classes/FBRetainCycleDetector/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongLayout.m',
#  'KLeaksFinder/Classes/FBRetainCycleDetector/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongRelationDetector.m',
#  'KLeaksFinder/Classes/FBRetainCycleDetector/FBRetainCycleDetector/Layout/Classes/FBClassStrongLayoutHelpers.m',
#  ]

  #这是需要添加mrc标识的文件，为相对路径

  non_arc_files = 'KLeaksFinder/Classes/FBRetainCycleDetector/FBRetainCycleDetector/Associations/FBAssociationManager.mm',
  'KLeaksFinder/Classes/FBRetainCycleDetector/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongLayout.m',
  'KLeaksFinder/Classes/FBRetainCycleDetector/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongRelationDetector.m',
  'KLeaksFinder/Classes/FBRetainCycleDetector/FBRetainCycleDetector/Layout/Classes/FBClassStrongLayoutHelpers.m'

  #在工程中首先排除一下

  s.exclude_files = non_arc_files

  #一下就是子设置，为需要添加mrc标识的文件进行设置

  s.subspec 'no-arc' do |sp|

  sp.source_files = non_arc_files

  sp.requires_arc = false

  end

#  s.dependency 'FBRetainCycleDetector', '0.1.4'
  
  # s.resource_bundles = {
  #   'KLeaksFinder' => ['KLeaksFinder/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
