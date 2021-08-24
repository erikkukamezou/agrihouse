require 'rails_helper'
RSpec.describe Manufacture, type: :model do
  describe 'バリデーションテスト' do
    context 'harvest, indoor_temperature, soil_temperature, humidityが未入力の場合' do
      it 'バリデーションにひっかる' do
        manufacture = Manufacture.new( harvest: '', indoor_temperature: '', soil_temperature: '', humidity: '')
        expect(manufacture).not_to be_vaild
      end
    end
  end
end
