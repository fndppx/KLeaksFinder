#
# Be sure to run `pod lib lint KLeaksFinder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KLeaksFinder'
  s.version          = '0.1.5'
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
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'keyan' => '270022748@qq.com' }
  s.source           = { :git => 'https://github.com/fndppx/KLeaksFinder.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'KLeaksFinder', "{KLeaksFinder,rcd_fishhook}/**/*.{h,m,mm,c}"

  mrr_files = [
      'KLeaksFinder/FBRetainCycleDetector/Associations/FBAssociationManager.h',
      'KLeaksFinder/FBRetainCycleDetector/Associations/FBAssociationManager.mm',
      'KLeaksFinder/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongLayout.h',
      'KLeaksFinder/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongLayout.m',
      'KLeaksFinder/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongRelationDetector.h',
      'KLeaksFinder/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongRelationDetector.m',
      'KLeaksFinder/FBRetainCycleDetector/Layout/Classes/FBClassStrongLayoutHelpers.h',
      'KLeaksFinder/FBRetainCycleDetector/Layout/Classes/FBClassStrongLayoutHelpers.m',
    ]

  files = Pathname.glob("KLeaksFinder/**/*.{h,m,mm}")
  files = files.map {|file| file.to_path}
  files = files.reject {|file| mrr_files.include?(file)}

  s.requires_arc = files.sort + [
    'rcd_fishhook/**/*.{c,h}'
  ]
  s.public_header_files = [
     'KLeaksFinder/FBRetainCycleDetector/Detector/FBRetainCycleDetector.h',
     'KLeaksFinder/FBRetainCycleDetector/Associations/FBAssociationManager.h',
     'KLeaksFinder/FBRetainCycleDetector/Graph/FBObjectiveCBlock.h',
     'KLeaksFinder/FBRetainCycleDetector/Graph/FBObjectiveCGraphElement.h',
     'KLeaksFinder/FBRetainCycleDetector/Graph/Specialization/FBObjectiveCNSCFTimer.h',
     'KLeaksFinder/FBRetainCycleDetector/Graph/FBObjectiveCObject.h',
     'KLeaksFinder/FBRetainCycleDetector/Graph/FBObjectGraphConfiguration.h',
     'KLeaksFinder/FBRetainCycleDetector/Filtering/FBStandardGraphEdgeFilters.h',
     'KLeaksFinder/MLeaksFinder/MLeaksFinder.h',
     'KLeaksFinder/MLeaksFinder/NSObject+MemoryLeak.h'
   ]

   s.framework = "Foundation", "CoreGraphics", "UIKit"
   s.library = 'c++'
  
end
