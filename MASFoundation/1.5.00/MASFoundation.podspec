Pod::Spec.new do |s|

    s.version       = '1.5.00'
    s.name          = 'MASFoundation'
    s.summary       = 'The MASFoundation framework is the core iOS framework upon which Mobile App Service is built.'
    s.homepage      = "https://github.com/CAAPIM/iOS-MAS-Foundation"
    s.social_media_url  = 'https://twitter.com/CAinc'
    s.authors       = {'Luis Sanches' => 'luis.sanches@ca.com'}
    s.license       = {:type => 'MIT', :file => 'LICENSE.md'}
    s.platform      = :ios, '9.0'
    s.requires_arc  = true
    s.source        = {:http => 'https://github.com/CAAPIM/iOS-MAS-Foundation/releases/download/1.4.00/MASFoundationD.zip?raw=true'}
    s.ios.vendored_frameworks = 'MASFoundation.framework'

end
