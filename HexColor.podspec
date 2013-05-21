Pod::Spec.new do |s|
  s.name     = 'HexColor'
  s.version  = '2.0.0'
  s.license  = 'MIT'
  s.summary  = 'Easy HEX- and RGB-Color Handling for UIColor and NSColor as a drop in category. Former MLUIColorAdditions'
  s.homepage = 'https://github.com/mRs-/HexColors'
  s.description = %{
    Easily create hex colors for both UIColor and NSColor.
  }
  s.author   = { "Marius Landwehr" => "marius.landwehr@gmail.com", "holgersindbaek" => "holgersindbaek@gmail.com" }
  s.source   = { :git => 'https://github.com/mRs-/HexColors.git', :tag => s.version.to_s}
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.6'
  s.source_files = 'Classes/HexColor.{h,m}'
end