Pod::Spec.new do |s|

    s.name              = 'MASUI'
    s.version           = '2.1.00'
    s.summary           = 'MASUI is the core iOS UI framework for CA Mobile API Gateway and CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-UI"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Manu Tripathi' => 'manu.tripathi@broadcom.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '12.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-UI/releases/download/2.1.00/MASUI.zip?raw=true'}
    s.vendored_frameworks = 'MASUI.framework'
    s.dependency 'MASFoundation', '2.1.00'
    s.dependency 'MASProximity', '2.1.00'	
end