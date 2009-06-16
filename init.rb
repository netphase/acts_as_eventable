# Include hook code here
require 'acts_as_eventable'
ActiveRecord::Base.send(:include, Netphase::Acts::Eventable::ActiveRecordExtensions)
# ActionView::Base.send(:include, Netphase::Acts::Eventable::ActionViewExtensions)