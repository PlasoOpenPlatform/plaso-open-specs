Pod::Spec.new do |s|
    s.name                  = 'PlasoFeaturedSDK'
    s.version               = '0.1.18'
    s.summary               = 'PlasoFeaturedSDK iOS SDK'
    s.description           = <<-DESC
    PlasoFeaturedSDK iOS SDK. Universial Plaso Features.
  DESC
    s.homepage              = 'https://www.plaso.cn'
    s.license               = { :type => 'Copyright', :text => <<-LICENSE
    Copyright 2025 plaso.cn. All rights reserved.
  LICENSE
    }
    s.author                = { 'Plaso Dev Team' => 'dev.ios@plaso.me' }
    s.source                = { :http => "https://wwwr.plaso.cn/static/sdk/ios/dev/#{s.name}/#{s.version}/#{s.name}.zip" }
    s.platform              = :ios, '12.0'
    s.swift_versions = ['4.0', '4.2', '5.0']

    s.ios.deployment_target = '12.0'
    s.default_subspecs = ['PlasoFeaturedSDK']

    s.subspec 'PlasoFeaturedSDK' do |ss|

        ss.frameworks =  'SystemConfiguration', 'QuartzCore', 'CoreGraphics','AudioToolbox','CoreAudio', 'AVFoundation', 'OpenGLES','PDFKit','JavaScriptCore'

        ss.dependency 'PlasoFeaturedSDK/PlasoLiveMini'
        ss.dependency 'PlasoFeaturedSDK/PlasoFeatureWeb'
    end

    s.subspec 'PlasoCommonSDK' do |ss|
      ss.vendored_frameworks   = ["PlasoCommonSDK.xcframework"]

      ss.frameworks =  'SystemConfiguration', 'QuartzCore', 'CoreGraphics','AudioToolbox','CoreAudio', 'AVFoundation', 'OpenGLES','PDFKit','JavaScriptCore'

      ss.dependency 'SVProgressHUD', '~> 2.3.1'
      ss.dependency 'MJExtension', '~> 3.0.15.1'
      ss.dependency 'MJRefresh', '~> 3.1.15' 
      ss.dependency 'SDWebImage', '5.18.12'
      ss.dependency 'Masonry', '~> 1.1.0'
      ss.dependency 'SSZipArchive', '2.1.2'
      ss.dependency 'AFNetworking', '~> 4.0.0'
      ss.dependency 'PINCache', '~> 2.3'
      ss.dependency 'AliyunOSSiOS', '2.11.1' 
      ss.dependency 'Sentry', '8.41.0'
      ss.dependency 'KakaJSON', '~> 1.1.2'
      ss.dependency 'SAMKeychain', '~> 1.5.3'
      ss.dependency "FMDB", "2.7.11"
      ss.dependency 'LAME-xcframework', '~> 3.100.3'
      ss.dependency 'Swinject'
      
      ss.dependency 'PlasoLogger', '1.0.4'
    end

    s.subspec 'PlasoUpimePlayerNative' do |ss|
      ss.vendored_frameworks   = ["PlasoUpimePlayerNative.xcframework"]

      ss.frameworks =  'SystemConfiguration', 'QuartzCore', 'CoreGraphics','AudioToolbox','CoreAudio', 'AVFoundation', 'OpenGLES','PDFKit','JavaScriptCore'

      

      ss.dependency 'GCDWebServer', '3.5.4'

      ss.dependency 'PlasoFeaturedSDK/PlasoCommonSDK'
    end

    s.subspec 'PlasoAnnoMiniBook' do |ss|
      ss.vendored_frameworks   = ["PlasoAnnoMiniBook.xcframework"]

      ss.frameworks =  'SystemConfiguration', 'QuartzCore', 'CoreGraphics','AudioToolbox','CoreAudio', 'AVFoundation', 'OpenGLES','PDFKit','JavaScriptCore'

      ss.dependency 'PlasoFeaturedSDK/PlasoCommonSDK'
      ss.dependency 'PlasoFeaturedSDK/PlasoUpimePlayerNative'

    end

    s.subspec 'PlasoLiveMini' do |ss|
      ss.vendored_frameworks   = ["PlasoLiveMini.xcframework"]

      ss.frameworks =  'SystemConfiguration', 'QuartzCore', 'CoreGraphics','AudioToolbox','CoreAudio', 'AVFoundation', 'OpenGLES','PDFKit','JavaScriptCore'

      ss.dependency 'AliPlayerSDK_iOS', '6.14.0'
      ss.dependency 'AliPlayerSDK_iOS_ARTC', '6.14.0'
      ss.dependency 'RtsSDK', '2.6.2'
      ss.dependency 'MMWormhole','2.0.0'
    
      ss.dependency 'PlasoStyleUpime'
      ss.dependency 'PlasoInnerModule'
      ss.dependency 'Upimet'

      ss.dependency 'PlasoFeaturedSDK/PlasoCommonSDK'
      ss.dependency 'PlasoFeaturedSDK/PlasoUpimePlayerNative'
      ss.dependency 'PlasoFeaturedSDK/PlasoAnnoMiniBook'

    end

    s.subspec 'PlasoFeatureWeb' do |ss|
      ss.vendored_frameworks   = ["PlasoFeatureWeb.xcframework"]

      ss.frameworks =  'SystemConfiguration', 'QuartzCore', 'CoreGraphics','AudioToolbox','CoreAudio', 'AVFoundation', 'OpenGLES','PDFKit','JavaScriptCore'

      ss.dependency 'PlasoFeaturedSDK/PlasoCommonSDK'
      ss.dependency 'PlasoFeaturedSDK/PlasoUpimePlayerNative'
      ss.dependency 'PlasoFeaturedSDK/PlasoAnnoMiniBook'
      ss.dependency 'PlasoFeaturedSDK/PlasoLiveMini'
    end
end



