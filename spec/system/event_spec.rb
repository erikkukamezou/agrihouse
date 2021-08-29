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
    context 'イベントを新規作成した場合' do
      it '作成したイベントが表示される' do
        visit new_event_path
        fill_in 'event[content]', with: 'testtest'
        select '2022', from: 'event[start_date(1i)]'
        select '12', from: 'event[start_date(2i)]'
        select '22', from: 'event[start_date(3i)]'
        select '22', from: 'event[start_date(4i)]'
        select '50', from: 'event[start_date(5i)]'
        select '2022', from: 'event[end_date(1i)]'
        select '12', from: 'event[end_date(2i)]'
        select '30', from: 'event[end_date(3i)]'
        select '20', from: 'event[end_date(4i)]'
        select '30', from: 'event[end_date(5i)]'


        # fill_in 'event[start_date(2i)]', with: '02'
        # fill_in 'event[start_date(3i)]', with: '02'
        # fill_in 'event[end_date(1i)]', with: '2022'
        # fill_in 'event[end_date(2i)]', with: '02'
        # fill_in 'event[end_date(3i)]', with: '30'
        fill_in 'event[tasks_attributes][0][work]', with: '業務'
        click_button '登録'
        expect(page).to have_content '12a'
      end
    end
   end

   describe '一覧表示' do
     context 'イベント一覧画面に遷移した場合' do
       it '作成済のイベント一覧が表示される' do
         visit events_path
         expect(page).to have_content '12a'
       end
     end
   end

   describe '詳細表示機能' do
     context '任意のイベント詳細画面に遷移した場合' do
       it '該当のイベントの内容が表示される' do
         visit events_path(:event)
         expect(page).to have_content '12a'
         # expect(page).to  have_content '草取り'
       end
     end
   end
end
