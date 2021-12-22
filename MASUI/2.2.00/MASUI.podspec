Pod::Spec.new do |s|

    s.name              = 'MASUI'
    s.version           = '2.2.00'
    s.summary           = 'MASUI is the core iOS UI framework for CA Mobile API Gateway and CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-UI"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Syed Yusuf' => 'syed.yusuf@broadcom.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '14.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-UI/releases/download/2.2.00/MASUI.zip?raw=true'}
    s.vendored_frameworks = 'MASUI.framework'
    s.dependency 'MASFoundation', '2.2.00'
    s.dependency 'MAS-Proximity', '2.2.00'
    s.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.user_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}	
end