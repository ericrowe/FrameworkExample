#
# Be sure to run `pod lib lint FrameworkExample.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FrameworkExample'
  s.version          = '0.1.0'
  s.summary          = 'A much more meaningful short description of FrameworkExample.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A really ong description to make lint be quiet.  It needs to be longer than the summary or the busybody who wrote the vaildator will get upset.
                       DESC

  s.homepage         = 'https://github.com/ericrowe/FrameworkExample'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ericrowe' => 'ERowe@us.ci.org' }
  s.source           = { :git => 'https://github.com/ericrowe/FrameworkExample.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'FrameworkExample/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FrameworkExample' => ['FrameworkExample/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
