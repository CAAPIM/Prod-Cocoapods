Pod::Spec.new do |s|

    s.name              = 'MASAOTP'
    s.version           = '3.1.03'
    s.summary           = 'MASAOTP is a framework to secure online transactions from Man-in-the-Middle (MITM) and other related attacks.'
    s.homepage          = "https://github.com/CAAPIM/RAS-Releases"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Mahendra Nimishakavi' => 'mahendra.nimishakavi@broadcom.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/RAS-Releases/releases/download/3.1.03/MASAOTP.zip?raw=true'}
    s.library           = 'sqlite3'
    s.vendored_frameworks = 'MASAOTP.framework'
    s.dependency 'MASFoundation', '2.0.00'
end

