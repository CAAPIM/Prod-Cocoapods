Pod::Spec.new do |s|

    s.name              = 'MASConnecta'
    s.version           = '1.7.10'
    s.summary           = 'MASConnecta is the core messaging framework for CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-Connecta"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-Connecta/releases/download/1.7.10/MASConnecta.zip?raw=true'}
    s.vendored_frameworks = 'MASConnecta.framework'
    s.dependency 'MASFoundation', '1.7.10'
    s.dependency 'MASIdentityManagement', '1.7.10'
end
