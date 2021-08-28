require 'rails_helper'
RSpec.describe Dairy, type: :model do
  describe 'バリデーションテスト' do
    context '観察日記のタイトル' do
      it 'バリデーションにひっかる' do
        dairy = Dairy.new(title: '', content:'aaa')
        dairy.title = nil
        expect(dairy.valid?).to eq(false)
        # expect(dairy).not_to be_vaild
      end
    end

    context '内容が未入力の場合' do
      it 'バリデーションにひっかる' do
        dairy = Dairy.new(title: 'aaa', content:'')
        dairy.content = nil
        expect(dairy.valid?).to eq(false)
        # expect(dairy).not_to be_vaild
      end
    end
  end
end
