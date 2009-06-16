class Event < ActiveRecord::Base
  belongs_to :eventable, :polymorphic => true
  has_enumerated :event_type
  
  def self.find_events_for_eventable(eventable_str, eventable_id)
    find(:all,
      :conditions => ["eventable_type = ? and eventable_id = ?", eventable_str, eventable_id],
      :order => "updated_at DESC"
    )
  end
  
  def self.find_events_for_eventable_by_event_type(eventable_str, event_type_id)
    find(:all,
      :conditions => ["eventable_type = ? and event_type_id = ?", eventable_str, event_type_id],
      :order => "created_at ASC"
    )
  end

  def self.find_eventable(eventable_str, eventable_id)
    eventable_str.constantize.find(eventable_id)
  end
  
  
end
