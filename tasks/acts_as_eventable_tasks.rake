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

