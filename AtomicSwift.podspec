Pod::Spec.new do |s|
  s.name             = 'AtomicSwift'
  s.version          = '1.2.1'
  s.summary          = 'The atomic swift fork'
  s.homepage         = 'https://github.com/equinox-platformx/atomicswift'
  s.author           = { 'Demian Preiti' => 'demian.preiti@equinox.com' }
  
  s.source           = { :git => 'https://github.com/equinox-platformx/atomicswift.git', :tag => s.version.to_s }
  s.platforms    = { :ios => "13.0" }
  s.ios.deployment_target = '13.0'

  s.source_files = "Sources/Atomics/**/*.{h,m,swift,gyb}"

  s.dependency '_AtomicsShims'
end
