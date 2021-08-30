require 'rails_helper'
RSpec.describe Cost, type: :model do
  # let!(:cost) { FactoryBot.create(:cost) }
  describe 'バリデーションテスト' do

    context '土の値段が入力済の場合' do
      it '土の値段が未入力の場合バリデーションにひっかかる' do
        cost = FactoryBot.build(:cost)
        # cost = Cost.new(soil: "", fertilizer: "4", seed: "5", sale: "5")
        cost.soil = nil
        # expect(cost.valid?).to eq(false)
        expect(cost).not_to be_valid
      end

      it '土の値段が入力済の場合バリデーションに通る' do
        cost = FactoryBot.build(:cost)
        expect(cost).to be_valid
      end
    end

    context '収穫量が入力済の場合' do
      it 'バリデーションに通る' do
        cost = FactoryBot.build(:cost)
        # cost = Cost.new(soil: "50", fertilizer: "", seed: "5", sale: "5")
        # cost.fertilizer = nil
        # expect(cost.valid?).to eq(false)
        expect(cost).to be_valid
      end

      it 'バリデーションにひっかかる' do
        cost = FactoryBot.build(:cost)
        cost.fertilizer = nil
        expect(cost).not_to be_valid
      end
    end

    context '種・苗が入力済の場合' do
      it 'バリデーションに通る' do
        cost = FactoryBot.build(:cost)
        # cost = Cost.new(soil: "50", fertilizer: "4", seed: "", sale: "5")

        expect(cost).to be_valid
        # expect(cost.valid?).to eq(false)
      end

      it 'バリデーションにひっかかる' do
        cost = FactoryBot.build(:cost)
        cost.seed = nil
        expect(cost).not_to be_valid
      end
    end

    context '売り上げが入力済の場合' do
      it 'バリデーションに通る' do
        cost = FactoryBot.build(:cost)
        # cost = Cost.new(soil: "5", fertilizer: "4", seed: "5", sale: "")
        # cost.sale = nil
        expect(cost).to be_valid
      end

      it 'バリデーションにひっかかる' do
        cost = FactoryBot.build(:cost)
        cost.sale = nil
        expect(cost).not_to be_valid
      end
    end
  end
end
