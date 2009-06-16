module Netphase
  module Acts
    module Eventable
    
      module ActiveRecordExtensions
        def self.included(base)
          base.extend(ClassMethods)
        end
      
        module ClassMethods
          def acts_as_eventable
            has_many :events, :as => :eventable, :dependent => :destroy
            extend SingletonMethods
            include InstanceMethods
          
            # any class methods here -  like validations and callbacks
          end
        end
      
        module SingletonMethods
          # Helper method to lookup for events for a given object.
          # This method is equivalent to obj.issues.
          def find_events_for(obj)
            eventable = ActiveRecord::Base.send(:class_name_of_active_record_descendant, self).to_s
         
            Event.find(:all,
              :conditions => ["eventable_id = ? and eventable_type = ?", obj.id, eventable],
              :order => "created_at DESC"
            )
          end
        
        end
      
        module InstanceMethods
          # Helper method to sort events by date
          def events_by_most_recent
            Event.find(:all,
              :conditions => ["eventable_id = ? and eventable_type = ?", id, self.type.name],
              :order => "created_at DESC"
            )
          end
        
          def events_by_event_type(symbol)
            event_type = EventType[symbol]
            Event.find(:all,
              :conditions => ["eventable_id = ? and eventable_type = ? and event_type_id = ?", id, self.type.name, event_type.id],
              :order => "created_at DESC"
            )
          end
        
          def call(symbol, *args)
            event_type = EventType[symbol]
            Event.create(:eventable_id => id, :eventable_type => self.type.name, :event_type_id => event_type.id) unless event_type.blank?
          end
        
          def method_missing(symbol, *args)
            begin
              super(symbol, *args)
            rescue NoMethodError
              call(symbol, *args)
            end
          end
          
          def respond_to?(method_id, include_private = false)
            if EventType.to_a.include? method_id.to_s 
              return true 
            else         
              super
            end
          end        
        
        end
      
      end
    
      module ActionControllerExtensions
        # not sure i will need this yet - placeholder so i don't forget
      end
    
      module ActionViewExtensions
        # not sure i will need this yet - placeholder so i don't forget
      end
      
    end    
  end
end
