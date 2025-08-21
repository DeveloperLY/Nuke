Pod::Spec.new do |s|
  s.name             = 'Nuke'
  s.version          = '12.8.0'
  s.summary          = 'Nuke is an image loading system for Swift'
  s.description      = <<-DESC
                       Nuke provides a simple and efficient way to download and display images in iOS, macOS, tvOS, watchOS, and visionOS apps.
                       DESC
  s.homepage         = 'https://github.com/DeveloperLY/Nuke'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DeveloperLY' => 'coderyliu@email.com' }
  s.source           = { :git => 'https://github.com/DeveloperLY/Nuke.git', :tag => s.version.to_s }

  s.swift_versions   = ['5.7', '5.8', '5.9']

  s.ios.deployment_target     = '13.0'
  s.tvos.deployment_target    = '13.0'
  s.macos.deployment_target   = '10.15'
  s.watchos.deployment_target = '6.0'
  s.visionos.deployment_target = '1.0'

  s.default_subspecs = ['Core', 'UI', 'Video', 'Extensions']
  
  # 主 target
  s.subspec 'Core' do |sp|
    sp.source_files = 'Sources/Nuke/**/*.{swift,h}'
  end

  # UI
  s.subspec 'UI' do |sp|
    sp.source_files = 'Sources/NukeUI/**/*.{swift,h}'
    sp.dependency 'Nuke/Core'
  end

  # Video
  s.subspec 'Video' do |sp|
    sp.source_files = 'Sources/NukeVideo/**/*.{swift,h}'
    sp.dependency 'Nuke/Core'
  end

  # Extensions
  s.subspec 'Extensions' do |sp|
    sp.source_files = 'Sources/NukeExtensions/**/*.{swift,h}'
    sp.dependency 'Nuke/Core'
  end
end