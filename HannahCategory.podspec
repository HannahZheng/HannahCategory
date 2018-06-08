#
# Be sure to run `pod lib lint HannahCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HannahCategory'
  s.version          = '1.0.3'
  s.summary          = '分类'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/HannahZheng/HannahCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HannahZheng' => '821134912@qq.com' }
  s.source           = { :git => 'https://github.com/HannahZheng/HannahCategory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

s.source_files = 'HannahCategory/Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'HannahCategory' => ['HannahCategory/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  #获取当前的vc
  s.subspec 'NSObject+HHCurrentVC' do |spvc|
      s
      spvc.source_files = 'HannahCategory/Classes/NSObject+HHCurrentVC/**/*'
  end

  
  #虚线
  s.subspec 'UIView+HHLineDash' do |spl|
      spl.source_files = 'HannahCategory/Classes/UIView+HHLineDash/**/*'
  end
  
  #string size
  s.subspec 'NSString+HHSize' do |spss|
      spss.source_files = 'HannahCategory/Classes/NSString+HHSize/**/*'
  end
  
  # 圆角
  s.subspec 'HHRoundCorner' do |sprc|
      sprc.source_files = 'HannahCategory/Classes/HHRoundCorner/**/*'
  end
  
  # button bage
  s.subspec 'UIButton+HHBadge' do |spbb|
      spbb.source_files = 'HannahCategory/Classes/UIButton+HHBadge/**/*'
  end
  
  #color hex
  s.subspec 'HHColorHex' do |spch|
      spch.source_files = 'HannahCategory/Classes/HHColorHex/**/*'
  end
  
  #image compress
  s.subspec 'UIImage+HHCompress' do |spic|
      spic.source_files = 'HannahCategory/Classes/UIImage+HHCompress/**/*'
  end
  
end
