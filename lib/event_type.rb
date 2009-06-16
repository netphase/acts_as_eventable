class EventType < ActiveRecord::Base
  has_many :events  
  acts_as_enumerated
  
  def self.to_a
    a = EventType.all.collect {|et| et.name } || []
  end
end