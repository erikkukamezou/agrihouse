FactoryBot.define do
  factory :event do
    content {'test'}
    start_date {DateTime.now}
    end_date {DateTime.now + 10}
    association :user
  end

  factory :second_event,  class: Event do
    content {'test2'}
    start_date {'2021-09-01'}
    end_date {'2021-09-31'}
    user_id {User.first.id}
    # association :user
  end

  factory :third_event,  class: Event do
    content {'test3'}
    start_date {'2021-10-01'}
    end_date {'2021-10-31'}
    user_id {User.first.id}
    # association :user
  end
end
