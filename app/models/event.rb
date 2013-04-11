class Event < ActiveRecord::Base
  attr_accessible :show_time, :event_name

  validates :show_time, uniqueness: { scope: :event_name }
  validates :event_name, presence: true
end
