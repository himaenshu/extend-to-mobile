lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "mobile-views"
  spec.version       = "1.0.0"
  spec.licenses      = ['MIT']
  spec.authors       = ["Himanshu Joshi"]
  spec.email         = ["himaenshu@gmail.com"]
  spec.summary       = "Mobile Views is the ruby gem to facilitate organizing and using the rails view templates for different mobile devices."
  spec.homepage      = "https://github.com/himaenshu/mobile-views"
  spec.files         = ["lib/mobile_view.rb"]
  spec.require_paths = ["lib"]
end