#
# Be sure to run `pod lib lint BZLog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TMLog'
  s.version          = '1.0'
  s.summary          = '分级日志'

  s.description      = '支持记录崩溃日志；支持分级日志'

  s.homepage         = 'https://github.com/Tovema-iOS/TMLog'
  s.license          = 'MIT'
  s.author           = { 'CodingPub' => 'lxb_0605@qq.com' }
  s.source           = { :git => 'https://github.com/Tovema-iOS/TMLog.git', :tag => s.version.to_s }
  
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/TMLog/**/*'

  s.dependency 'CocoaLumberjack', '~> 3.4.0'
end
