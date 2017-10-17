#
# Be sure to run `pod lib lint PaymaxSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PaymaxSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PaymaxSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/coderbook/PaymaxSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'coderbook' => 'coderbook@126.com' }
  s.source           = { :git => 'https://github.com/coderbook/PaymaxSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#s.source_files = 'PaymaxSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PaymaxSDK' => ['PaymaxSDK/Assets/*.png']
  # }

  s.public_header_files = 'Pod/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
s.vendored_libraries='PaymaxSDK/libPaymaxSDK.a'
s.subspec 'WeChat' do |wechat|
    wechat.vendored_libraries='PaymaxSDK/Paymax+wx/libPaymaxWx.a','PaymaxSDK/Paymax+wx/WX/*.a'
end
s.subspec 'Ali' do |ali|
    ali.resources='PaymaxSDK/Paymax+alipay/Alipay/AlipaySDK.bundle'
    ali.vendored_frameworks='PaymaxSDK/Paymax+alipay/libPaymaxAli.a','PaymaxSDK/Paymax+alipay/Alipay/AlipaySDK.framework'

end
s.subspec 'Lkl' do |lkl|
lkl.vendored_libraries='PaymaxSDK/Paymax+lkl/libPaymaxLkl.a','PaymaxSDK/Paymax+lkl/lkl/*.a'
lkl.resource_bundles={
    'lkl'=>['PaymaxSDK/Paymax+lkl/lkl/lklimages/*.png']
}
end

end
