#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "KSActivityIndicatorView"
  s.version          = "0.1.1"
  s.summary          = "KSActivityIndicatorView: A sub class of UIActivityIndicatorView."
  s.description      = <<-DESC
                       KSActivityIndicatorView provides an alternative to UIActivityIndicatorView
                       that lets you specify the animation with image sequences.

                       The animation can be colorized with tintColor property.

                       DESC
  s.homepage         = "http://mikethinkingoutloud.com"
  s.screenshots      = "https://github.com/mikeMTOL/KSActivityIndicatorView/blob/master/screenshot_1.png?raw=true"
  s.license          = 'MIT'
  s.author           = { "mike" => "" }
  s.source           = { :git => "https://github.com/mikeMTOL/KSActivityIndicatorView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mikeMTOL'

  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.requires_arc = true

  s.source_files = 'Classes/ios'
  
  end
