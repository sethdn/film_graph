FactoryGirl.define do
  factory :venue do
    name "PFA"
  end

  factory :event do
    show_at { DateTime.new(2001, 2, 3) }
  end
end
