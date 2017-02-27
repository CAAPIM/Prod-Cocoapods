Pod::Spec.new do |s|

    s.name              = 'MASConnecta'
    s.version           = '1.2.01'
    s.summary           = 'MAS Connecta is the core messaging framework for CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-Connecta"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-Connecta/releases/download/1.2.03/MASConnecta.zip?raw=true'}
    s.vendored_frameworks = 'MASConnecta.framework'
    s.dependency 'MASFoundation', '1.2.03'
end
