Pod::Spec.new do |s|

    s.name              = 'MASProximity'
    s.version           = '2.1.00'
    s.summary           = 'MASProximity is the proximity connector framework for CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-Proximity"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Manu Tripathi' => 'manu.tripathi@broadcom.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '12.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-Proximity/releases/download/2.1.00/MASProximity.zip?raw=true'}
    s.vendored_frameworks = 'MASProximity.framework'
    s.dependency 'MASFoundation', '2.1.00'
end
