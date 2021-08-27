require 'rails_helper'
RSpec.describe Cost, type: :model do
  let!(:cost) { FactoryBot.create(:cost) }
  describe 'バリデーションテスト' do

    context '土の値段, 収穫量, 種・苗, 売り上げが未入力の場合' do
      it 'バリデーションにひっかる' do
        cost = Cost.new(soil: '', fertilizer: '', seed: '', sale: '')
        expect(cost).to be_vaild

        # context '土の値段が未入力の場合' do
        #   it 'バリデーションにひっかる' do
        #     cost.soil = nil
        #     expect(cost).to be_vaild
        #   end
        # end
      end
    end
  end
end
