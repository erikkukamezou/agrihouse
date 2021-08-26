require 'rails_helper'
RSpec.describe 'イベント管理機能', type: :system do
  let!(:event) { FactoryBot.create(:event) }
  let!(:second_event) { FactoryBot.create(:second_event) }
  let!(:third_event) { FactoryBot.create(:third_event) }

  before do
    visit new_user_session_path
    fill_in 'user[email]', with: 'test100@test.com'
    fill_in 'user[password]', with: 'test100test100'
    click_button 'ログイン'
  end

  describe '新規作成機能'  do
    context 'コストを新規作成した場合' do
      it '作成したコストが表示される' do
        visit new_event_path
        fill_in 'event[content]', with: 'test'
        fill_in 'event[start_date]', with: '2021-08-01'
        fill_in 'event[end_date]', with: '2021-08-31'
        click_button '登録'
        expect(page).to have_content 'test'
      end
    end
   end

   describe '一覧表示' do
     context 'スケジュール一覧画面に遷移した場合' do
       it '作成済のスケジュール一覧が表示される' do
         visit events_path
         expect(page).to have_content '200'
       end
     end
   end

   describe '詳細表示機能' do
     context '任意のイベント詳細画面に遷移した場合' do
       it '該当のイベントの内容が表示される' do
         visit events_path(:event)
         expect(page).to have_content '200'
       end
     end
   end
end
