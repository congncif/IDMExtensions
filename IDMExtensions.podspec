Pod::Spec.new do |s|
  s.name             = 'IDMExtensions'
  s.version          = '0.1.1'
  s.swift_versions   = ['5.0', '5.1', '5.2', '5.3']
  s.summary          = 'Set of extensions of IDMCore.'

  s.description      = <<-DESC
Collection of extensions for IDMCore. Maybe there are many subspecs for a type of component. Please select right one which fits to your business. For example: Codable or ObjectMapper, Loading or MBProgressHUD or JGProgressHUD, ...
                       DESC

  s.homepage         = 'https://github.com/congncif/IDMExtensions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'NGUYEN CHI CONG' => 'congnc.if@gmail.com' }
  s.source           = { :git => 'https://github.com/congncif/IDMExtensions.git', :tag => s.version.to_s }
   s.social_media_url = 'https://twitter.com/congncif'

  s.ios.deployment_target = '9.0'

  s.default_subspec = 'Default'
  
  s.subspec 'Default' do |co|
      co.dependency 'IDMExtensions/ErrorHandler'
  end
  
  s.subspec 'ErrorHandler' do |co|
      co.source_files = 'IDMExtensions/ErrorHandler/**/*.swift'
      
      co.dependency 'IDMCore'
      co.dependency 'SiFUtilities/Show'
  end
  
  s.subspec 'Loading' do |co|
      co.source_files = 'IDMExtensions/Loading/**/*.swift'
      
      co.dependency 'IDMCore'
      co.dependency 'SiFUtilities/Loading'
  end
  
  s.subspec 'MBProgressHUD' do |co|
      co.source_files = 'IDMExtensions/MBProgressHUD/**/*.swift'
      
      co.dependency 'IDMCore'
      co.dependency 'MBProgressHUD'
      co.dependency 'SiFUtilities/Localize'
  end
  
  s.subspec 'JGProgressHUD' do |co|
      co.source_files = 'IDMExtensions/JGProgressHUD/*.swift'
      
      co.dependency 'IDMCore'
      co.dependency 'JGProgressHUD'
      co.dependency 'SiFUtilities/Localize'
  end
  
  s.subspec 'ObjectMapper' do |co|
      co.source_files = 'IDMExtensions/ObjectMapper/*.swift'
      
      co.dependency 'IDMCore'
      co.dependency 'ObjectMapper'
  end
  
  s.subspec 'Codable' do |co|
      co.source_files = 'IDMExtensions/Codable/*.swift'
      
      co.dependency 'IDMCore'
  end
end
