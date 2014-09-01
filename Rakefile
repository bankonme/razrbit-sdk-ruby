require 'rake/clean'
require 'rubygems/package_task'
require 'rspec/core/rake_task'

task :default => [:spec]

CLEAN.include('pkg')

RSpec::Core::RakeTask.new(:spec)

spec = eval(File.read('razrbit.gemspec'))
Gem::PackageTask.new(spec) do |pkg|
end
