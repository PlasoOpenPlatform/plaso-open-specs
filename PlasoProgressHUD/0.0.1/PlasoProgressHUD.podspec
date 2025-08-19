Pod::Spec.new do |s|
    s.name                  = 'PlasoProgressHUD'
    s.version               = '0.0.1'
    s.summary               = 'A clean and lightweight progress HUD for iOS.'
    s.description           = <<-DESC
    PlasoProgressHUD SDK.
  DESC
    s.homepage              = 'https://www.plaso.cn'
    s.license               = { :type => 'Copyright', :text => <<-LICENSE
    Copyright 2025 plaso.cn. All rights reserved.
  LICENSE
    }
    s.author                = { 'Plaso Dev Team' => 'dev.ios@plaso.me' }
    s.source                = { :http => "https://wwwr.plaso.cn/static/sdk/ios/#{s.name}/#{s.version}/#{s.name}.zip" }
    s.platform              = :ios, '12.0'
    s.ios.deployment_target = '12.0'
    s.vendored_frameworks   = "#{s.name}.xcframework"
end