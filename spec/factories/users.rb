FactoryBot.define do
  factory :user do
    id {100}
    name {'test100'}
    email {'test100@test.com'}
    password {'test100test100'}
    password_confirmation {'test100test100'}
    admin {false}
  end

  factory :second_user, class: User do
    id {102}
    name {'test102'}
    email {'test102@test.com'}
    password {'test102test102'}
    password_confirmation {'test102test102'}
    admin {false}
  end

  factory :third_user, class: User do
    id {103}
    name {'test103'}
    email {'test103@test.com'}
    password {'test103test103'}
    password_confirmation {'test103test103'}
    admin {true}
  end
end
