# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{netphase-acts_as_eventable}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Beck"]
  s.date = %q{2009-06-17}
  s.description = %q{This acts_as module makes it extremely simple to add events to a model that will be stored in a table for later querying or reporting on. The events have an event type, which also corresponds to how the event is triggered. View the README for examples and usage instructions.}
  s.email = %q{chris@netphase.com}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "MIT-LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "init.rb",
     "install.rb",
     "lib/acts_as_eventable.rb",
     "lib/event.rb",
     "lib/event_type.rb",
     "tasks/acts_as_eventable_tasks.rake",
     "test/acts_as_eventable_test.rb",
     "test/test_helper.rb",
     "uninstall.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/netphase/acts_as_eventable}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{This acts_as module makes it extremely simple to add events to a model that will be stored in a table for later querying or reporting on.}
  s.test_files = [
    "test/acts_as_eventable_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
