FactoryBot.define do
  factory :cost do
    sale {200}
    fertilizer {200}
    soil {200}
    seed {200}
    association :user
  end

  factory :second_cost, class: Cost do
    sale {300}
    fertilizer {300}
    soil {300}
    seed {300}
    user_id {User.first.id}
    # association :user
  end

  factory :third_cost, class: Cost do
    sale {400}
    fertilizer {400}
    soil {400}
    seed {400}
    user_id {User.first.id}
    # association :user
  end
end
