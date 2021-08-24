require 'rails_helper'
RSpec.describe Event, type: :model do
  describe 'バリデーションテスト' do
    context 'contentが未入力の場合' do
      it 'バリデーションにひっかる' do
        user = FactoryBot.create(:user)
        event = Event.new(content: '')
        expect(event).not_to be_vaild
      end
    end
  end
end
