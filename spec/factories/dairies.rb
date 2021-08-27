FactoryBot.define do
  factory :dairy do
    title  {'aaa'}
    content {'aaa'}
    # image (Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/dairy_1')) )
    # image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/factorybot/test(1).jpg')) }
    association :user
  end

  factory :second_dairy, class: Dairy do
    title {'bbb'}
    content  {'bbb'}
    # image {Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/dairy_2'))}
    user_id {User.first.id}
    # association :user
  end

  factory :third_dairy, class: Dairy do
    title {'ccc'}
    content  {'ccc'}
    # image {Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/images/dairy_3'))}
    user_id {User.first.id}
    # association :user
  end
end
