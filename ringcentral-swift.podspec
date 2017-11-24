Pod::Spec.new do |s|
    s.name = 'ringcentral-swift'
    s.version = '0.7.1'
    s.license = 'MIT'
    s.summary = 'RingCentral Swift Client'
    s.description = 'RingCentral Swift Client'

    s.homepage = 'https://github.com/ringcentral/ringcentral-swift'
    s.author = 'RingCentral'

    s.ios.deployment_target = '9.0'
    s.osx.deployment_target = '10.11'

    s.source = { :path => './' }
    s.requires_arc = true

    s.module_name = 'DealFlowSDK'
    s.dependency 'Alamofire', '~> 4.5'
    s.dependency 'ObjectMapper', '~> 3.1'
    s.dependency 'CryptoSwift', '~> 0.8'
    s.dependency 'PubNub', '~> 4.7'

    s.source_files = 'Source/**/*.{swift}'
end
