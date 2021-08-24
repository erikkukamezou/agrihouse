require 'rails_helper'
RSpec.describe Dairy, type: :model do
  describe 'バリデーションテスト' do
    context '観察日記のタイトル, 内容が未入力の場合' do
      it 'バリデーションにひっかる' do
        dairy = Dairy.new(title: '', content:'')
        expect(dairy).not_to be_vaild
      end
    end
  end
end
