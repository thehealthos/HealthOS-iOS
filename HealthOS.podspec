Pod::Spec.new do |s|
  s.name             = "HealthOS"
  s.version          = "1.0.0"
  s.summary          = <<-SUMMARY
  <p>Welcome to HealthOS API! 

HealthOS allows you to create world class healthcare applications, leveraging our data source of medicines (generics and branded), food items (with nutrition value), various excercises and physical activities, lab tests, diseases etc.

The API is organized around REST. All requests should be made over SSL. All request and response bodies, including errors, are encoded in JSON.</p>

SUMMARY
  s.homepage         = "http://apimatic.io"
  s.license          = 'MIT'
  s.author           = { "APIMATIC" => "support@apimatic.io" }

  s.requires_arc     = true
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.source           = {:git => ''}

  s.source_files     = 'HealthOS/**/*.{h,m}'

  s.dependency       'Unirest-APIMATIC'
  s.dependency       'JSONModel'
  s.dependency       'ISO8601DateFormatter', '~> 0.7'
end
