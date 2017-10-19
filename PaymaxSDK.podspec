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
s.source           = { :git => 'https://github.com/coderbook/PaymaxSDK.git', :commit => "bd66edb67c6328bfff8d42ada09e1500b6cea447" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

s.source_files='PaymaxSDK/**/*.h'
s.header_dir='PaymaxSDK'

s.default_subspec='Paymax','Wechat','Alipay','LklPay'

s.subspec 'Paymax' do |pm|
pm.vendored_libraries='PaymaxSDK/libPaymaxSDK.a'
pm.frameworks='CoreMotion','AssetsLibrary','CoreTelephony','Security','SystemConfiguration','CFNetwork'
pm.libraries='sqlite3','z','c++'
end

s.subspec 'Wechat' do |wx|

wx.vendored_libraries='PaymaxSDK/Paymax+wx/libPaymaxWx.a','PaymaxSDK/Paymax+wx/WX/libWeChatSDK.a'
wx.dependency 'PaymaxSDK/Paymax'

end

s.subspec 'Alipay' do |ali|
ali.vendored_libraries='PaymaxSDK/Paymax+alipay/libPaymaxAli.a'
ali.vendored_frameworks='PaymaxSDK/Paymax+alipay/Alipay/AlipaySDK.framework'
ali.resource='PaymaxSDK/Paymax+alipay/Alipay/AlipaySDK.bundle'
ali.dependency 'PaymaxSDK/Paymax'

end
s.subspec 'LklPay' do |lkl|
lkl.resource_bundle={'lklImage'=>'PaymaxSDK/Paymax+lkl/lkl/lklimages/*.png'}
lkl.vendored_libraries='PaymaxSDK/Paymax+lkl/libPaymaxLkl.a','PaymaxSDK/Paymax+lkl/lkl/libLKLPaySDK.a'
lkl.dependency 'PaymaxSDK/Paymax'

end


end
