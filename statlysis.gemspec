# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name          = 'statlysis'
  s.version       = '0.0.1'
  s.date          = '2013-07-10'
  s.summary       = File.read("README.markdown").split(/===+/)[1].strip.split("\n")[0]
  s.description   = s.summary
  s.authors       = ["David Chen"]
  s.email         = 'mvjome@gmail.com'
  s.homepage      = 'https://github.com/eoecn/statlysis'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/{functional,unit}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rake"
  s.add_dependency "rails"
  s.add_dependency "mysql2"
  s.add_dependency "mongoid", "~> 3.0.0"
  s.add_dependency "activerecord"
  s.add_dependency "activerecord_idnamecache"
  s.add_dependency "activesupport"
  s.add_dependency "sequel"
  s.add_dependency 'only_one_rake'
  s.add_dependency 'bson_ext'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry-debugger'
  s.add_development_dependency 'guard-test'

end
