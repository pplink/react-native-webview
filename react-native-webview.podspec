require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platforms    = { :ios => "9.0", :osx => "10.13" }

  s.source       = { :git => "https://github.com/pplink/react-native-webview.git", :tag => "v#{s.version}" }
  s.source_files  = "apple/**/*.{h,m}"
  
  # pagecall support
  s.ios.vendored_frameworks = 'ios/Frameworks/WKWebViewRTC.framework'
  s.dependency 'GoogleWebRTC', '1.1.29229'

  s.dependency 'React-Core'
end
