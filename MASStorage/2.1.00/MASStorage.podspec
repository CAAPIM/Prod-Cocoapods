Pod::Spec.new do |s|

    s.name              = 'MASStorage'
    s.version           = '2.1.00'
    s.summary           = 'MASStorage is the data peristence framework for CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-Storage"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Manu Tripathi' => 'manu.tripathi@broadcom.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '12.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-Storage/releases/download/2.1.00/MASStorage.zip?raw=true'}
    s.vendored_frameworks = 'MASStorage.framework'
    s.library           = 'sqlite3'
    s.dependency 'MASFoundation', '2.1.00'
end
