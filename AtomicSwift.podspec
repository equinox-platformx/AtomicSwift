Pod::Spec.new do |s|
  s.name             = 'AtomicSwift'
  s.version          = '1.2.1'
  s.summary          = 'The atomic swift fork'
  s.homepage         = 'https://github.com/equinox-platformx/atomicswift'
  s.author           = { 'Demian Preiti' => 'demian.preiti@equinox.com' }
  
  s.source           = { :git => 'https://github.com/equinox-platformx/atomicswift.git', :tag => s.version.to_s }
  s.platforms    = { :ios => "13.0" }
  s.ios.deployment_target = '13.0'

  s.subspec '_AtomicsShims' do |ss|
    ss.source_files = 'Sources/_AtomicsShims/**/*.{h,c}'
  end

  s.subspec 'Core' do |core|
    core.source_files = "Sources/Atomics/**/*.{h,m,swift,gyb}"
    core.dependency 'Core/_AtomicsShims'
end
 # s.dependency '_AtomicsShims'
end
