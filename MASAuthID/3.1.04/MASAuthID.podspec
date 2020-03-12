Pod::Spec.new do |s|

    s.name              = 'MASAuthID'
    s.version           = '3.1.04'
    s.summary           = 'MASAuthID is a framework to secure online transactions from Man-in-the-Middle (MITM) and other related attacks.'
    s.homepage          = "https://github.com/CAAPIM/RAS-Releases"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Manu Tripathi' => 'manu.tripathi@broadcom.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '12.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/RAS-Releases/releases/download/3.1.04/MASAuthID.zip?raw=true'}
    s.library           = 'sqlite3'
    s.vendored_frameworks = 'MASAuthID.framework'
    s.dependency 'MASFoundation', '2.1.00'
end
