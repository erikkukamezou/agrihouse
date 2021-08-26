require 'rails_helper'
RSpec.describe '生産管理管理機能', type: :system do
  let!(:manufacture) { FactoryBot.create(:manufacture) }
  let!(:second_manufacture) { FactoryBot.create(:second_manufacture) }
  let!(:third_manufacture) { FactoryBot.create(:third_manufacture) }

  before do
    visit new_user_session_path
    fill_in 'user[email]', with: 'test100@test.com'
    fill_in 'user[password]', with: 'test100test100'
    click_button 'ログイン'
  end

  describe '新規作成機能'  do
    context '生産管理を新規作成した場合' do
      it '作成した生産管理が表示される' do
        visit new_manufacture_path
        fill_in 'manufacture[harvest]', with: '1000'
        fill_in 'manufacture[indoor_temperature]', with: '1000'
        fill_in 'manufacture[soil_temperature]', with: '1000'
        fill_in 'manufacture[humidity]', with: '1000'
        click_button '登録'
        expect(page).to have_content '1000'
      end
    end
   end

   describe '一覧表示' do
     context '生産管理一覧画面に遷移した場合' do
       it '作成済の生産管理一覧が表示される' do
         visit manufactures_path
         expect(page).to have_content '10'
       end
     end
   end

   describe '詳細表示機能' do
     context '任意の生産管理詳細画面に遷移した場合' do
       it '該当の生産管理の内容が表示される' do
         visit manufactures_path(:manufacture)
         expect(page).to have_content '10'
       end
     end
   end
end
