$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "appointments"
  s.version     = "1.3.0"
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Schedule appointments with Rails 3 and the jQuery-UI"
  s.email       = "mleveton@prepcloud.com"
  s.homepage    = "https://github.com/Leveton/appointments"
  s.description = "Schedule appointments with Rails 3 and the jQuery-UI"
  s.authors     = ['Michael Leveton']
  s.files = `git ls-files`.split("\n")
  s.test_files    = Dir["test/**/*"]
  s.require_paths = ["lib"]
  s.rubyforge_project = 'appointments'
  s.has_rdoc = true
  s.add_dependency('thor')
end
