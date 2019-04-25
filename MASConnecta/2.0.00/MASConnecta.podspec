Pod::Spec.new do |s|

    s.name              = 'MASConnecta'
    s.version           = '2.0.00'
    s.summary           = 'MASConnecta is the core messaging framework for CA Mobile App Services.'
    s.homepage          = "https://github.com/CAAPIM/iOS-MAS-Connecta"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors           = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license           = {:type => 'MIT',:file => 'LICENSE.md'}
    s.platform          = :ios, '9.0'
    s.requires_arc      = true
    s.source            = {:http => 'https://github.com/CAAPIM/iOS-MAS-Connecta/releases/download/2.0.00/MASConnecta.zip?raw=true'}
    s.vendored_frameworks = 'MASConnecta.framework'
    s.dependency 'MASFoundation', '2.0.00'
    s.dependency 'MASIdentityManagement', '2.0.00'
end
