Pod::Spec.new do |s|

    s.name              = 'MASIdentityManagement'
    s.version           = '1.3.01'
    s.summary           = 'MAS IdentityManagement is the user and group management framework for CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-IdentityManagement"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'http://github.com/CAAPIM/Prod-Cocoapods/blob/master/MASIdentityManagement/1.3.01/MASIdentityManagement.zip?raw=true'}
    s.vendored_frameworks = 'MASIdentityManagement.framework'
    s.dependency 'MASFoundation'
end
