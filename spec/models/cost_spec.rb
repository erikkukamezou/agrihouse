require 'rails_helper'
RSpec.describe Cost, type: :model do
  describe 'バリデーションテスト' do
    context 'soil, fertilizer, seed, saleが未入力の場合' do
      it 'バリデーションにひっかる' do
        cost = Cost.new(soil: '', fertilizer: '', seed: '', sale: '')
        expect(cost).not_to be_vaild
      end
    end
  end
end
