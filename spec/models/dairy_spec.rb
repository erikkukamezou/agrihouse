require 'rails_helper'
RSpec.describe Dairy, type: :model do
  describe 'バリデーションテスト' do
    # context '観察日記のタイトル' do
      it '観察日記のタイトル空の場合バリデーションにひっかる' do
        dairy = FactoryBot.build(:dairy)
        # dairy = Dairy.new(title: '', content:'aaa')
        dairy.title = nil
        # expect(dairy.valid?).to eq(false)
        expect(dairy).not_to be_valid
      end

      it '観察日記のタイトル入力済の場合バリデーションに通る' do
        dairy = FactoryBot.build(:dairy)
        # dairy = Dairy.new(title: 'zzz', content:'aaa')
        # dairy.title = nil
        expect(dairy).to be_valid
        # expect(dairy.valid?).to eq(false)
      end
    # end

    # context '内容が未入力の場合' do
      it '内容が未入力の場合バリデーションにひっかる' do
        dairy = FactoryBot.build(:dairy)
        # dairy = Dairy.new(title: 'aaa', content:'')
        dairy.content = nil
        # expect(dairy.valid?).to eq(false)
        expect(dairy).not_to be_valid
      end

      it '内容が入力済の場合バリデーションに通る' do
        dairy = FactoryBot.build(:dairy)
        # dairy = Dairy.new(title: 'aaa', content:'zzz')
        # dairy.content = nil
        expect(dairy).to be_valid
        # expect(dairy.valid?).to eq(false)
      end
    # end
  end
end
