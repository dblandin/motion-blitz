# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.name          = 'motion-blitz'
  gem.version       = '0.0.1'
  gem.authors       = ['Devon Blandin']
  gem.email         = 'dblandin@gmail.com'
  gem.description   = %q{RubyMotion wrapper for SVProgressHUD}
  gem.summary       = %q{RubyMotion wrapper for SVProgressHUD}
  gem.homepage      = 'http://github.com/dblandin/motion-blitz'
  gem.license       = 'MIT'

  files = []
  files << 'README.md' << Dir.glob('lib/**/*.rb')
  gem.files         = files
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'motion-cocoapods', '>= 1.3.2'
  gem.add_development_dependency 'rake'
end
