Pod::Spec.new do |s|

    s.name              = 'MASIdentityManagement'
    s.version           = '1.9.10'
    s.summary           = 'MASIdentityManagement is the user and group management framework for CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-IdentityManagement"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-IdentityManagement/releases/download/1.9.10/MASIdentityManagement.zip?raw=true'}
    s.vendored_frameworks = 'MASIdentityManagement.framework'
    s.dependency 'MASFoundation', '1.9.10'
end
