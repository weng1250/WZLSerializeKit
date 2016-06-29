Pod::Spec.new do |s|
  s.name             = 'WZLSerializeKit'
  s.version          = '1.2'
  s.summary          = 'A four-line tool to enable serialize and deserialize in iOS platform'
  s.description      = <<-DESC
                       A four-line tool to enable serialize and deserialize in iOS platform. 4行代码完成iOS序列化与反序列化.
                       DESC
  s.homepage         = 'https://github.com/weng1250/WZLSerializeKit'
  s.license          = { :type => 'None', :file => 'LICENSE' }
  s.author           = { 'Zilin Weng翁子林' => "zilin_weng@163.com" } 
  s.source           = { :git => 'https://github.com/weng1250/WZLSerializeKit.git', :branch => 'feature/1.2' }
  s.platform         = :ios, '6.0'
  s.requires_arc     = true
	
  s.source_files     = 'WZLSerializeKit/*.{h,m}', 'WZLSerializeKit/Dir/*.{h,m}' 
  s.public_header_files = 'WZLSerializeKit/**/*.{h}'
end
