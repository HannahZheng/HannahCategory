#
# Be sure to run `pod lib lint HannahCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HannahCategory'
  s.version          = '1.0.1'
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

  s.source_files = 'HannahCategory/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HannahCategory' => ['HannahCategory/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  #获取当前的vc
  s.subspec 'HannahVC' do |spvc|
      spvc.source_files = 'HannahCategory/Classes/HannahVC/**/*'
  end

  
  #虚线
  s.subspec 'HannahLineDash' do |spl|
      spl.source_files = 'HannahCategory/Classes/HannahLineDash/**/*'
  end
  
  #string size
  s.subspec 'HannahStringSize' do |spss|
      spss.source_files = 'HannahCategory/Classes/HannahStringSize/**/*'
  end
  
  # 圆角
  s.subspec 'HannahRoundCorner' do |sprc|
      sprc.source_files = 'HannahCategory/Classes/HannahRoundCorner/**/*'
  end
  
  # button bage
  s.subspec 'HannahButtonBadge' do |spbb|
      spbb.source_files = 'HannahCategory/Classes/HannahButtonBadge/**/*'
  end
  
  #color hex
  s.subspec 'HannahColorHex' do |spch|
      spch.source_files = 'HannahCategory/Classes/HannahColorHex/**/*'
  end
  
  #image compress
  s.subspec 'HannahImageCompress' do |spic|
      spic.source_files = 'HannahCategory/Classes/HannahImageCompress/**/*'
  end
  
end
