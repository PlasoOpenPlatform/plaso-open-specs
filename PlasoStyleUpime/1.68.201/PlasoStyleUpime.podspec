Pod::Spec.new do |s|
    s.name                  = 'PlasoStyleUpime'
    s.version               = '1.68.201'
    s.summary               = 'PlasoStyleUpime SDK'
    s.description           = <<-DESC
    PlasoStyleUpime SDK.
  DESC
    s.homepage              = 'https://www.plaso.cn'
    s.license               = { :type => 'Copyright', :text => <<-LICENSE
    Copyright 2018 plaso.cn. All rights reserved.
  LICENSE
    }
    s.author                = { 'Plaso Dev Team' => 'dev.ios@plaso.me' }
    s.source                = { :http => "https://wwwr.plaso.cn/static/sdk/ios/dev/#{s.name}/#{s.version}/#{s.name}.zip" }
    s.platform              = :ios, '12.0'
    s.vendored_frameworks   = "#{s.name}.xcframework"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.dependency 'PlasoUpimeRedBag', '1.0.13'
    s.dependency 'AgoraVideo_Special_iOS', '4.2.7.129.BOSUO'
    s.dependency 'PlasoTXLiteAVSDK_Professional', '12.2.16970'
    s.dependency 'PlasoLogger', '1.0.4'
    s.dependency 'MMWormhole', '2.0.0'
    s.dependency 'SSZipArchive', '2.1.2'
    s.dependency 'Masonry', '~> 1.1.0'
    s.dependency 'TOCropViewController', '~> 3.1.1'
    s.dependency 'AFNetworking', '~> 4.0.0'
    s.dependency 'PlasoProgressHUD'
end