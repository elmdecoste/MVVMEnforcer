
Pod::Spec.new do |spec|
    spec.name         = 'MVVMEnforcer'
    spec.version      = '1.0.0'
    spec.license      = { :type => 'MIT' }
    spec.homepage     = 'https://github.com/elmdecoste/MVVMEnforcer'
    spec.authors      = { 'Liam DeCoste' => 'elmdecoste@me.com' }
    spec.summary      = 'A lightweight framework that type enforces the MVVM architecture'
    spec.source       = { :git => 'https://github.com/elmdecoste/MVVMEnforcer.git', :tag => spec.version.to_s }
    spec.source_files = '**/*.{h,m,swift}'
end
