#
# Be sure to run `pod lib lint ConstantFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ConstantFramework'
  s.version          = '0.1.10'
  s.summary          = 'ConstantFramework is Integrated with constant files which can be used in all the projects.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ConstantFramework is Integrated with constant files which can be used in all the projects like validations , Device types and Loaders etc..!.
                       DESC

  s.homepage         = 'https://github.com/suneelseelam/ConstantFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'suneelseelam' => 'suneelseelam9@gmail.com' }
  s.source           = { :git => 'https://github.com/suneelseelam/ConstantFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ConstantFramework/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ConstantFramework' => ['ConstantFramework/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'NVActivityIndicatorView'
    s.dependency 'ReachabilitySwift', '~> 3'
end
