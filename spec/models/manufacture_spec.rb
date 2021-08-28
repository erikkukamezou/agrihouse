require 'rails_helper'
RSpec.describe Manufacture, type: :model do
  describe 'バリデーションテスト' do
    context 'harvestが未入力の場合' do
      it 'バリデーションにひっかる' do
        manufacture = Manufacture.new( harvest: '', indoor_temperature: '10', soil_temperature: '10', humidity: '10')
        manufacture.harvest = nil
        expect(manufacture.valid?).to eq(false)
        # expect(manufacture).not_to be_vaild
      end
    end

    context 'indoor_temperatureが未入力の場合' do
      it 'バリデーションにひっかる' do
        manufacture = Manufacture.new( harvest: '10', indoor_temperature: '', soil_temperature: '10', humidity: '10')
        manufacture.indoor_temperature = nil
        expect(manufacture.valid?).to eq(false)
        # expect(manufacture).not_to be_vaild
      end
    end

    context 'soil_temperatureが未入力の場合' do
      it 'バリデーションにひっかる' do
        manufacture = Manufacture.new( harvest: '50', indoor_temperature: '10', soil_temperature: '', humidity: '10')
        manufacture.soil_temperature = nil
        expect(manufacture.valid?).to eq(false)
        # expect(manufacture).not_to be_vaild
      end
    end

    context 'humidityが未入力の場合' do
      it 'バリデーションにひっかる' do
        manufacture = Manufacture.new( harvest: '10', indoor_temperature: '10', soil_temperature: '10', humidity: '')
        manufacture.humidity = nil
        expect(manufacture.valid?).to eq(false)
        # expect(manufacture).not_to be_vaild
      end
    end



  end
end
