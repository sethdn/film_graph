class Event < ActiveRecord::Base
  attr_accessible :show_time

  validates :show_time, uniqueness: { scope: :event_name, case_sensitive: false }
  validates :event_name, presence: true
end
