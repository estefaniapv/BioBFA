#
# Be sure to run `pod lib lint BioBFA.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BioBFA'
  s.version          = '0.1.0'
  s.summary          = 'BioBFA'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'BioBFA is a module to create biometric interaction.'
                       DESC

  s.homepage         = 'https://github.com/estefaniapv/BioBFA'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'estefaniapv' => 'estefaniapv94@gmail.com' }
  s.source           = { :git => 'https://github.com/estefaniapv/BioBFA.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'BioBFA/Classes/**/*'
  s.swift_version = '5.0'
  s.platforms = {
      "ios": "9.0"
  }
  
  # s.resource_bundles = {
  #   'BioBFA' => ['BioBFA/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'FPhiMBWidgetiOS', '~> 0.0.3'
  s.dependency 'FPhiSelphIDWidgetiOS', '~> 1.0.55'
end
