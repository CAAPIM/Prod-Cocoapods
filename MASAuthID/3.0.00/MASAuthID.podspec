Pod::Spec.new do |s|

    s.name              = 'MASAuthID'
    s.version           = '3.0.00'
    s.summary           = 'MASAuthID is a framework to secure online transactions from Man-in-the-Middle (MITM) and other related attacks.'
    s.homepage          = "https://github.com/CAAPIM/RAS-Releases"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/RAS-Releases/releases/download/3.0.00/MASAuthID.zip?raw=true'}
    s.vendored_frameworks = 'MASAuthID.framework'
    s.dependency 'MASFoundation', '1.8.00'
end
