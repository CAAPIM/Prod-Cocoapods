Pod::Spec.new do |s|

    s.name              = 'MASUI'
    s.version           = '1.2.03'
    s.summary           = 'MAS UI is the core iOS UI framework for CA Mobile API Gateway and CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-Storage"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-UI/releases/download/1.2.03/MASUI.zip?raw=true'}
    s.vendored_frameworks = 'MASUI.framework'
    s.resources         ='MASUIResources.bundle'
    s.dependency 'MASFoundation', '1.2.03'
end