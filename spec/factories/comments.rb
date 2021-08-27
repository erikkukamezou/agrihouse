FactoryBot.define do

  factory :comment do
    comment_content { 'yes' }
    association :user
    # association :dairy
  end

  # factory :second_comment, class: Comment do
  #   comment_content { 'no' }
  #   user_id {User.first.id}
  #   # association :user
  # end
  #
  # factory :third_comment, class: Comment do
  #   comment_content { 'hey' }
  #   user_id {User.first.id}
  #   # association :user
  # end
end
