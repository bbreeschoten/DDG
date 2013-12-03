
FactoryGirl.define do
  factory :activity, :class => Refinery::Activities::Activity do
    sequence(:profiel) { |n| "refinery#{n}" }
  end
end

