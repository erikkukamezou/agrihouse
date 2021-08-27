require 'rails_helper'
RSpec.describe Event, type: :model do
  describe 'バリデーションテスト' do
    context '内容が未入力の場合' do
      it 'バリデーションにひっかる' do
        #user = FactoryBot.create(:user)
        event = Event.new(content: '', start_date: DateTime.now, end_date: DateTime.now + 10)
        expect(event).to be_invaild
      end
    end
  end
end
