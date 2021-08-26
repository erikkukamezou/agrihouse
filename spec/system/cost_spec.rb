require 'rails_helper'
RSpec.describe 'コスト管理機能', type: :system do
  let!(:cost) { FactoryBot.create(:cost) }
  let!(:second_cost) { FactoryBot.create(:second_cost) }
  let!(:third_cost) { FactoryBot.create(:third_cost) }

  before do
    visit new_user_session_path
    fill_in 'user[email]', with: 'test100@test.com'
    fill_in 'user[password]', with: 'test100test100'
    click_button 'ログイン'
  end

  describe '新規作成機能'  do
    context 'コストを新規作成した場合' do
      it '作成したコストが表示される' do
        visit new_cost_path
        fill_in 'cost[sale]', with: '2000'
        fill_in 'cost[fertilizer]', with: '2000'
        fill_in 'cost[soil]', with: '2000'
        fill_in 'cost[seed]', with: '2000'
        click_button '登録'
        expect(page).to have_content '2000'
      end
    end
   end

   describe '一覧表示' do
     context 'コスト一覧画面に遷移した場合' do
       it '作成済のコスト一覧が表示される' do
         visit costs_path
         expect(page).to have_content '200'
       end
     end
   end

   describe '詳細表示機能' do
     context '任意のコスト詳細画面に遷移した場合' do
       it '該当のコストの内容が表示される' do
         visit costs_path(:cost)
         expect(page).to have_content '200'
       end
     end
   end

end
