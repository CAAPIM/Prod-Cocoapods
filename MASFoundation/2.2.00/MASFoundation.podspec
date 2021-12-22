Pod::Spec.new do |s|

    s.name              = 'MASFoundation'
    s.version           = '2.2.00'
    s.summary           = 'MASFoundation is the core iOS framework for CA Mobile API Gateway and CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-Foundation"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Syed Yusuf' => 'syed.yusuf@broadcom.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '14.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-Foundation/releases/download/2.2.00/MASFoundation.zip?raw=true'}
    s.vendored_frameworks = 'MASFoundation.framework'
    s.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    s.user_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
end