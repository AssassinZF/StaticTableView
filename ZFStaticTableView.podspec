Pod::Spec.new do |s|

  s.name         = "ZFStaticTableView"
  s.version      = "0.0.1"
  s.summary      = "A short description of ZFStaticTableView."

  s.description  = <<-DESC
			this project provide staticTableview for ios develop
                   DESC

  s.homepage     = "https://github.com/AssassinZF/StaticTableView"
  s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "占峰" => "http://www.jianshu.com/u/0bc0ebd2f372" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/AssassinZF/StaticTableView.git", :tag => s.version.to_s }

  s.source_files  = "CommonStaticTableView/CommonStaticTableViewClass/*.{h,m}”
  s.requires_arc = true

end
