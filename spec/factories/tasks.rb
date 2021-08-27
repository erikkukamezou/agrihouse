FactoryBot.define do
  factory :task do
    work { "草取り" }
    # image {""}
    association :event
    # association :user
  end

  # factory :second_task, class: Task do
  #   work { "肥料撒き" }
  #   image {""}
  # end
  #
  # factory :third_task, class: Task do
  #   work { "耕す" }
  #   image {""}
  # end
end
