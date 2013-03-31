Pod::Spec.new do |s|
  s.name     = 'FrameAccessor'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'Easy hex color.'
  s.homepage = 'https://github.com/holgersindbaek'
  s.description = %{
    You can make hex colors.
  }
  s.author   = { "holgersindbaek" => "holgersindbaek@gmail.com" }
  s.source   = { :git => 'https://github.com/holgersindbaek/MLUIColorAdditions.git', :tag => s.version.to_s}
  s.platform = :osx
  s.source_files = 'NSView+FrameAccessor.{h,m}'
end