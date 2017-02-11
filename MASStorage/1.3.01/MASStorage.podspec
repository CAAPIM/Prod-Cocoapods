Pod::Spec.new do |s|

    s.name              = 'MASStorage'
    s.version           = '1.3.01'
    s.summary           = 'MAS Storage is the data peristence framework for CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-Storage"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'http://github.com/CAAPIM/Prod-Cocoapods/blob/master/MASStorage/1.3.01/MASStorage.zip?raw=true'}
    s.vendored_frameworks = 'MASStorage.framework'
    s.dependency 'MASFoundation'
    s.library           = 'sqlite3'
end
