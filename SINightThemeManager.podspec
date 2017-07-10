Pod::Spec.new do |s|
  s.name         = "SINightThemeManager"
  s.version      = "0.1.0"
  s.summary      = "简单夜间模式的实现"
  s.homepage     = "https://github.com/silence0201/NightThemeManager"
  s.license      = { :type => "MIT", :file => "FLICENSE" }

  s.author             = { "Silence" => "374619540@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/silence0201/NightThemeManager.git", :tag => "#{s.version}" }
  s.source_files  = "NightThemeManager", "NightThemeManager/**/*.{h,m}"
  s.exclude_files = "NightThemeManager/Exclude"
  s.requires_arc = true
end
