require 'rails_helper'
RSpec.describe 'ユーザーのモデル機能テスト', type: :model do
  describe 'バリデーションテスト' do
    context 'ユーザー名が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(name: '',email: 'test100@test.com', password: 'test100test100')
        expect(user).not_to be_vaild
        # user = build(:user, name: nil)
      # 　user.valid?
      # 　expect(user.errors[:name]).to include("を入力してください")
      end
    end

    context 'emailが未入力の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(name: 'test100',email: '', password: 'test100test100')
        expect(user).not_to be_vaild
      end
    end

    context 'passwordが未入力の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(name: 'test100',email: 'test100@test.com', password: '')
        expect(user).not_to be_vaild
      end
    end
  end
end
