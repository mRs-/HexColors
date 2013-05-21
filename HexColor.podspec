Pod::Spec.new do |s|
  s.name     = 'HexColor'
  s.version  = '1.0.3'
  s.license  = 'MIT'
  s.summary  = 'Create HexColors easily.'
  s.homepage = 'https://github.com/holgersindbaek'
  s.description = %{
    Easily create hex colors for both UIColor and NSColor.
  }
  s.author   = { "holgersindbaek" => "holgersindbaek@gmail.com" }
  s.source   = { :git => 'https://github.com/holgersindbaek/HexColor.git', :tag => s.version.to_s}
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.6'
  s.source_files = 'HexColor.{h,m}'
end