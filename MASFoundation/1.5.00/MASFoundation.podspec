Pod::Spec.new do |s|

    s.name              = 'MASFoundation'
    s.version           = '1.5.00'
    s.summary           = 'MASFoundation is the core iOS framework for CA Mobile API Gateway and CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-Foundation"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-Foundation/releases/download/1.5.00/MASFoundation.zip?raw=true'}
    s.vendored_frameworks = 'MASFoundation.framework'
end
