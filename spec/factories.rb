FactoryGirl.define do
  factory :venue do
    name "PFA"
  end

  factory :event do
    show_time { DateTime.now }
    event_name "New Films"
  end
end
