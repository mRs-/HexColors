Pod::Spec.new do |s|
  s.name = 'HexColors'
  s.version = '6.0.0'
  s.license = 'MIT'
  s.summary = 'HexColors is an extension for UIColor and NSColor to support for creating colors from a hex strings.'
  s.homepage = 'https://github.com/mRs-/HexColors'
  s.description = %{
    HexColors is an extension for UIColor and NSColor to support for creating colors from a hex string like #FF0088 or 8844FF and back to a String. Completely rewritten in Swift 3!

    If you want to use this in Objective-C jump to the 4.X version Tag.
  }
  s.author = { "Marius Landwehr" => "marius.landwehr@gmail.com" }
  s.source = { :git => 'https://github.com/mRs-/HexColors.git', :tag => s.version.to_s}
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.source_files = 'Sources/*.swift'
end
