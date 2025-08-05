Pod::Spec.new do |s|
    s.name                  = 'Upimet'
    s.version               = '0.9.1581013'
    s.summary               = 'Upimet(Upime v3) iOS SDK'
    s.description           = <<-DESC
    Upimet(Upime v3) iOS SDK. Universial Plaso IME V3 SDK.
  DESC
    s.homepage              = 'https://www.plaso.cn'
    s.license               = { :type => 'Copyright', :text => <<-LICENSE
    Copyright 2018 plaso.cn. All rights reserved.
  LICENSE
    }
    s.author                = { 'Plaso Dev Team' => 'dev.ios@plaso.me' }
    s.source                = { :http => "https://wwwr.plaso.cn/static/sdk/ios/dev/#{s.name}/#{s.version}/#{s.name}.zip" }
    s.platform              = :ios, '11.0'
    s.swift_versions = ['4.0', '4.2', '5.0']
    s.vendored_frameworks   = "#{s.name}.xcframework"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.dependency 'PlasoUpimeRedBag', '~> 1.0.13'
    s.dependency 'PlasoSocketRocket', '~> 0.7.0.3'
    s.dependency 'PlasoCocoaLumberjack', '3.7.4'
    s.dependency 'SDWebImage', '~> 5.18.12'
    s.dependency 'SDWebImageWebPCoder'
    s.dependency 'TOCropViewController', '~> 2.6.0'
  end

