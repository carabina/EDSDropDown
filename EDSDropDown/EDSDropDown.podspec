
Pod::Spec.new do |s|


  s.name         = "EDSDropDown"
  s.version      = "1.0.1"
  s.summary      = "This is simple drop down with selection"

  s.description  = "This is EDSDropDown Framework with noSelection, SingleSelection and MultipleSelection"
  s.homepage     = "https://github.com/jitendrahome1/EDSDropDown"
  s.license      = "MIT"
  s.author       = { "Jitendra Agarwal" => "agarwal.jitendra9@gmail.com" }
  s.platform     = :ios, "11.0"
 s.source        = { :git => "https://github.com/jitendrahome1/EDSDropDown.git", :tag => s.version }

s.source_files   =  "EDSDropDown/**/*.{h,m}"
s.ios.source_files  = 'EDSDropDown/Source/Classes/*.swift'
s.resources    = 'EDSDropDown/**/*.{xib}'


end
