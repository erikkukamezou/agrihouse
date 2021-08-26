FactoryBot.define do
  factory :dairy do
    title  {'aaa'}
    content {'aaa'}
    image {}
    association :user
  end

  factory :second_dairy, class: Dairy do
    title {'bbb'}
    content  {'bbb'}
    image {}
    user_id {User.first.id}
    # association :user
  end

  factory :third_dairy, class: Dairy do
    title {'ccc'}
    content  {'ccc'}
    image {}
    user_id {User.first.id}
    # association :user
  end
end
