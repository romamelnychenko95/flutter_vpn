#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_vpn.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_vpn'
  s.version          = '0.1.0'
  s.summary          = 'Flutter plugin to access vpn service on macOS.'
  s.description      = <<-DESC
Flutter plugin to access vpn service on macOS using NetworkExtension.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  
  # Змінено платформу на macOS. 10.11 - це стандартний мінімум для VPN API
  s.platform = :osx, '10.11'

  # Для macOS використовується FlutterMacOS замість Flutter
  s.dependency 'FlutterMacOS'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
