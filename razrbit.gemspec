require File.join([File.dirname(__FILE__),'lib', 'razrbit', 'version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'razrbit'
  s.version = Razrbit::VERSION
  s.author = ["LUXSTACK"]
  s.email = 'devops@luxstack.com'
  s.homepage = 'https://github.com/LUXSTACK/razrbit-sdk-ruby'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Razrbit'
  s.files = Dir.glob("{lib}/**/*") + %w(README.md)
  s.require_paths << 'lib'
  s.add_dependency('json')
  s.add_dependency('websocket-client-simple', '~> 0.2')
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
  s.add_development_dependency('byebug')
end
