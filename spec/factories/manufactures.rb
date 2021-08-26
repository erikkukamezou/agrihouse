FactoryBot.define do
  factory :manufacture do
    harvest {10}
    indoor_temperature {10}
    soil_temperature {10}
    humidity {10}
    association :user
  end

  factory :second_manufacture, class: Manufacture do
    harvest {20}
    indoor_temperature {20}
    soil_temperature {20}
    humidity {20}
    user_id { User.first.id }
    # association :user
  end

  factory :third_manufacture, class: Manufacture do
    harvest {30}
    indoor_temperature {30}
    soil_temperature {30}
    humidity {30}
    user_id { User.first.id }
    # association :user
  end
end
