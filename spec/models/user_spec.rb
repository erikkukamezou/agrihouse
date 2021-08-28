require 'rails_helper'
RSpec.describe 'ユーザーのモデル機能テスト', type: :model do
  describe 'バリデーションテスト' do
    context 'ユーザー名が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(name: '',email: 'test100@test.com', password: 'test100test100')
        # binding.pry
        # expect(user).not_to be_vaild
        user.name = nil
        expect(user.valid?).to eq(false)
      # 　user.valid?
      # 　expect(user.errors[:name]).to include("を入力してください")
      end
    end

    # user = User.new( name: '', email: 'model@mail.com', password: 'password', password_confirmation: 'password' )
    #     expect(user).not_to be_valid
    #   end
    # end
    context 'emailが未入力の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(name: 'test100',email: '', password: 'test100test100')
        user.email = nil
        expect(user.valid?).to eq(false)
      end
    end

    context 'passwordが未入力の場合' do
      it 'バリデーションにひっかる' do
        user = User.create(name: 'test100',email: 'test100@test.com', password: '')
        user.password = nil
        expect(user.valid?).to eq(false)
      end
    end
  end
end
