Pod::Spec.new do |s|
    s.name                  = 'PlasoInnerModule'
    s.version               = '1.58.100'
    s.summary               = 'Plaso Upime SDK Module'
    s.description           = <<-DESC
    Plaso Upime SDK Module, Main Module
  DESC
    s.homepage              = 'https://www.plaso.cn'
    s.license               = { :type => 'Copyright', :text => <<-LICENSE
    Copyright 2025 plaso.cn. All rights reserved.
  LICENSE
    }
    s.author                = { 'Plaso Dev Team' => 'dev.ios@plaso.me' }
    s.source                = { :http => "https://wwwr.plaso.cn/static/sdk/ios/dev/#{s.name}/#{s.version}/#{s.name}.zip" }
    s.platform              = :ios, '12.0'
    s.ios.deployment_target = '12.0'
    s.vendored_frameworks   = "App.xcframework"
    s.dependency 'PlasoFlutter', '3.22.3'
end