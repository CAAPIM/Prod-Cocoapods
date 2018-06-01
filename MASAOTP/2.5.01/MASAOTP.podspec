Pod::Spec.new do |s|

    s.name              = 'MASAOTP'
    s.version           = '2.5.01'
    s.summary           = 'MASAOTP is a framework to secure online transactions from Man-in-the-Middle (MITM) and other related attacks.'
    s.homepage          = "https://github.com/CAAPIM/RAS-Releases"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/RAS-Releases/releases/download/2.5.01/MASAOTP.zip?raw=true'}
    s.vendored_frameworks = 'MASAOTP.framework'
    s.dependency 'MASFoundation', '1.6.10'
end

