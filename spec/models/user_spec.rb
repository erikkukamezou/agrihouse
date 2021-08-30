require 'rails_helper'
RSpec.describe 'ユーザーのモデル機能テスト', type: :model do
  describe 'バリデーションテスト' do
    # context 'ユーザー名が空の場合' do
      it 'ユーザー名が空の場合バリデーションにひっかる' do
        user = FactoryBot.build(:user)
        # user = User.new(name: '',email: 'test100@test.com', password: 'test100test100')
        user.name = nil
        expect(user).not_to be_valid
        # expect(user.valid?).to eq(false)
      # 　user.valid?
      # 　expect(user.errors[:name]).to include("を入力してください")
      end

      it 'ユーザー名が入力済の場合バリデーションに通る' do
        user = FactoryBot.build(:user)
        # user = User.new(name: 'test100',email: 'test100@test.com', password: 'test100test100')
        # user.name = nil
        expect(user).to be_valid
        # expect(user.valid?).to eq(true)
      end
    # end

    # user = User.new( name: '', email: 'model@mail.com', password: 'password', password_confirmation: 'password' )
    #     expect(user).not_to be_valid
    #   end
    # end
    # context 'emailが未入力の場合' do
      it 'emailが未入力の場合バリデーションにひっかる' do
        user = FactoryBot.build(:user)
        # user = User.new(name: 'test100',email: '', password: 'test100test100')
        user.email = nil
        expect(user).not_to be_valid
        # expect(user.valid?).to eq(false)
      end

      it 'emailが入力済の場合バリデーションに通る' do
        user = FactoryBot.build(:user)
        # user = User.new(name: 'test100',email: 'test100@test.com', password: 'test100test100')
        # user.email = nil
        expect(user).to be_valid
        # expect(user.valid?).to eq(true)
      end
    # end

    # context 'passwordが未入力の場合' do
      it 'passwordが未入力の場合バリデーションにひっかる' do
        user = FactoryBot.build(:user)
        # user = User.create(name: 'test100',email: 'test100@test.com', password: '')
        user.password = nil
        expect(user).not_to be_valid
        # expect(user.valid?).to eq(false)
      end

      it 'passwordが入力済の場合バリデーションに通る' do
        user = FactoryBot.build(:user)
        # user = User.create(name: 'test100',email: 'test100@test.com', password: 'test100test100')
        # user.password = nil
        expect(user).to be_valid
        # expect(user.valid?).to eq(true)
      end

      # it 'password_confirmationが未入力の場合バリデーションにひっかかる' do
      #   user = FactoryBot.build(:user)
      #   binding.pry
      #   user.password_confirmation = nil
      #   expect(user).not_to be_valid
      # end
      #
      # it 'password_confirmationが入力済の場合バリエーションに通る' do
      #   user = FactoryBot.build(:user)
      #   expect(user).to be_valid
      # end
    # end
  end
end
