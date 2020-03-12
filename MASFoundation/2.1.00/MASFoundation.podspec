Pod::Spec.new do |s|

    s.name              = 'MASFoundation'
    s.version           = '2.1.00'
    s.summary           = 'MASFoundation is the core iOS framework for CA Mobile API Gateway and CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-Foundation"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Manu Tripathi' => 'manu.tripathi@broadcom.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '12.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-Foundation/releases/download/2.1.00/MASFoundation.zip?raw=true'}
    s.vendored_frameworks = 'MASFoundation.framework'
end
