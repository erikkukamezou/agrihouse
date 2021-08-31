require 'rails_helper'
RSpec.describe Manufacture, type: :model do
  describe 'バリデーションテスト' do
    context 'harvestが未入力の場合' do
      it 'バリデーションにひっかる' do
        manufacture = FactoryBot.build(:manufacture)
        # manufacture = Manufacture.new( harvest: '', indoor_temperature: '10', soil_temperature: '10', humidity: '10')
        manufacture.harvest = nil
        # binding.pry
        # expect(manufacture.valid?).to eq(false)
        # expect(event).not_to be_valid
        expect(manufacture).not_to be_valid
      end

      it 'バリデーションに通る'do
        manufacture = FactoryBot.build(:manufacture)
        # manufacture = Manufacture.new( harvest: '10', indoor_temperature: '10', soil_temperature: '10', humidity: '10')
        # manufacture.harvest = nil
        # expect(manufacture.valid?).to eq(false)
        expect(manufacture).to be_valid
      end
    end

    context '入力数が5文字以上の場合' do
      it 'バリデーションにひっかる' do
        manufacture = FactoryBot.build(:manufacture)
        manufacture.harvest = '5555555'
        expect(manufacture).to be_invalid
      end

      it '入力数が5文字以下の場合バリデーションに通る' do
        manufacture = FactoryBot.build(:manufacture)
        manufacture.harvest = '555'
        expect(manufacture).to be_valid
      end
    end

    context 'indoor_temperatureが未入力の場合' do
      it 'バリデーションにひっかる' do
        manufacture = FactoryBot.build(:manufacture)
        # manufacture = Manufacture.new( harvest: '10', indoor_temperature: '', soil_temperature: '10', humidity: '10')
        manufacture.indoor_temperature = nil
        # expect(manufacture.valid?).to eq(false)
        expect(manufacture).not_to be_valid
      end

      it 'バリデーションに通る' do
        manufacture = FactoryBot.build(:manufacture)
        # manufacture = Manufacture.new( harvest: '10', indoor_temperature: '100', soil_temperature: '10', humidity: '10')
        # manufacture.indoor_temperature = nil
        # expect(manufacture.valid?).to eq(false)
        expect(manufacture).to be_valid
      end
    end

    context '入力数が5文字以上の場合' do
      it 'バリデーションにひっかる' do
        manufacture = FactoryBot.build(:manufacture)
        manufacture.indoor_temperature = 55555555
        expect(manufacture).not_to be_valid
      end
    end

    context '入力数が5文字以下の場合' do
      it 'バリデーションに通る' do
        manufacture = FactoryBot.build(:manufacture)
        manufacture.indoor_temperature = 555
        expect(manufacture).to be_valid
      end
    end

    context 'soil_temperatureが未入力の場合' do
      it 'バリデーションにひっかる' do
        manufacture = FactoryBot.build(:manufacture)
        # manufacture = Manufacture.new( harvest: '50', indoor_temperature: '10', soil_temperature: '', humidity: '10')
        manufacture.soil_temperature = nil
        # expect(manufacture.valid?).to eq(false)
        expect(manufacture).not_to be_valid
      end

      it 'バリデーションに通る' do
        manufacture = FactoryBot.build(:manufacture)
        # manufacture = Manufacture.new( harvest: '50', indoor_temperature: '10', soil_temperature: '25', humidity: '10')
        # manufacture.soil_temperature = nil
        # expect(manufacture.valid?).to eq(false)
        expect(manufacture).to be_valid
      end
    end

    context '入力数が5文字以上の場合' do
      it 'バリデーションにひっかる' do
        manufacture = FactoryBot.build(:manufacture)
        manufacture.soil_temperature = 77777777
        expect(manufacture).not_to be_valid
      end
    end

    context '入力数が5文字以下の場合' do
      it 'バリデーションに通る' do
        manufacture = FactoryBot.build(:manufacture)
        manufacture.soil_temperature = 77
        expect(manufacture).to be_valid
      end
    end

    context 'humidityが未入力の場合' do
      it 'バリデーションにひっかる' do
        manufacture = FactoryBot.build(:manufacture)
        # manufacture = Manufacture.new( harvest: '10', indoor_temperature: '10', soil_temperature: '10', humidity: '')
        manufacture.humidity = nil
        # expect(manufacture.valid?).to eq(false)
        expect(manufacture).not_to be_valid
      end

      it 'バリデーションに通る' do
        manufacture = FactoryBot.build(:manufacture)
        # manufacture = Manufacture.new( harvest: '10', indoor_temperature: '10', soil_temperature: '10', humidity: '22')
        # manufacture.humidity = nil
        # expect(manufacture.valid?).to eq(false)
        expect(manufacture).to be_valid
      end
    end

    context '入力数が5文字以上の場合' do
      it 'バリデーションにひっかる' do
        manufacture = FactoryBot.build(:manufacture)
        manufacture.humidity = 8888888
        expect(manufacture).not_to be_valid
      end
    end

    context '入力数が5文字以下の場合' do
      it 'バリデーションに通る' do
        manufacture = FactoryBot.build(:manufacture)
        manufacture.humidity = 88
        expect(manufacture).to be_valid
      end
    end




  end
end
