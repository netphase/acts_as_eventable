require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the acts_as_eventable plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the acts_as_eventable plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ActsAsEventable'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "netphase-acts_as_eventable"
    gemspec.summary = "This acts_as module makes it extremely simple to add events to a model that will be stored in a table for later querying or reporting on."
    gemspec.email = "chris@netphase.com"
    gemspec.homepage = "http://github.com/netphase/acts_as_eventable"
    gemspec.description = "This acts_as module makes it extremely simple to add events to a model that will be stored in a table for later querying or reporting on. The events have an event type, which also corresponds to how the event is triggered. View the README for examples and usage instructions."
    gemspec.authors = ["Chris Beck"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end


