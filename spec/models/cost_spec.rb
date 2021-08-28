require 'rails_helper'
RSpec.describe Cost, type: :model do
  # let!(:cost) { FactoryBot.create(:cost) }
  describe 'バリデーションテスト' do

    context '土の値段が入力済の場合' do
      it 'バリデーションに通る' do
        cost = Cost.new(soil: "", fertilizer: "4", seed: "5", sale: "5")
        cost.soil = nil
        expect(cost.valid?).to eq(false)
      end
    end

    context '収穫量が入力済の場合' do
      it 'バリデーションに通る' do
        cost = Cost.new(soil: "50", fertilizer: "", seed: "5", sale: "5")
        cost.fertilizer = nil
        expect(cost.valid?).to eq(false)
      end
    end

    context '種・苗が入力済の場合' do
      it 'バリデーションに通る' do
        cost = Cost.new(soil: "50", fertilizer: "4", seed: "", sale: "5")
        cost.seed = nil
        expect(cost.valid?).to eq(false)
      end
    end

    context '売り上げが入力済の場合' do
      it 'バリデーションに通る' do
        cost = Cost.new(soil: "5", fertilizer: "4", seed: "5", sale: "")
        cost.sale = nil
        expect(cost.valid?).to eq(false)
      end
    end
  end
end
