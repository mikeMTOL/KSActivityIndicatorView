#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "KSActivityIndicatorView"
  s.version          = File.read('VERSION')
  s.summary          = "KSActivityIndicatorView: A sub class of UIActivityIndicatorView."
  s.description      = <<-DESC
                       KSActivityIndicatorView provides an alternative to UIActivityIndicatorView
                       that lets you specify the animation with image sequences.

                       The animation can be colorized with tintColor property.

                       DESC
  s.homepage         = "http://mikethinkingoutloud.com"
  s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "mike" => "" }
  s.source           = { :git => "http://EXAMPLE/NAME.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mikeMTOL'

  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.requires_arc = true

  s.source_files = 'Classes'
  s.resources = 'Assets/*.png'

  end
