require 'rails_helper'
RSpec.describe '観察日記管理機能', type: :system do
  let!(:dairy) { FactoryBot.create(:dairy) }
  let!(:second_dairy) { FactoryBot.create(:second_dairy) }
  let!(:third_dairy) { FactoryBot.create(:third_dairy) }

  before do
    visit new_user_session_path
    fill_in 'user[email]', with: 'test100@test.com'
    fill_in 'user[password]', with: 'test100test100'
    click_button 'ログイン'
  end

  describe '新規作成機能'  do
    context '観察日記を新規作成した場合' do
      it '作成した観察日記が表示される' do
        visit new_dairy_path
        fill_in 'dairy[title]', with: 'test'
        fill_in 'dairy[content]', with: 'testdesu'
        # fill_in 'dairy[image]', with: ''
        click_button '登録'
        expect(page).to have_content 'test'
        expect(page).to have_content 'testdesu'
        # expect(page).to have_content ''
      end
    end
   end

   describe '一覧表示' do
     context '観察日記一覧画面に遷移した場合' do
       it '作成済の観察日記一覧が表示される' do
         visit dairies_path
         expect(page).to have_content 'aaa'
         expect(page).to have_content 'aaa'
       end
     end
   end

   describe '詳細表示機能' do
     context '任意の観察日記詳細画面に遷移した場合' do
       it '該当の観察日記の内容が表示される' do
         visit dairies_path(:dairy)
         expect(page).to have_content 'aaa'
         expect(page).to have_content 'aaa'
         # expect(page).to have_content ''
       end
     end
   end
end
