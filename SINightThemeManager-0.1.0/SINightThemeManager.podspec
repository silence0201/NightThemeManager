Pod::Spec.new do |s|
  s.name = "SINightThemeManager"
  s.version = "0.1.0"
  s.summary = "\u7B80\u5355\u591C\u95F4\u6A21\u5F0F\u7684\u5B9E\u73B0"
  s.license = {"type"=>"MIT", "file"=>"FLICENSE"}
  s.authors = {"Silence"=>"374619540@qq.com"}
  s.homepage = "https://github.com/silence0201/NightThemeManager"
  s.requires_arc = true
  s.source = { :path => '.' }

  s.ios.deployment_target    = '7.0'
  s.ios.vendored_framework   = 'ios/SINightThemeManager.framework'
end
