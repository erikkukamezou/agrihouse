# require 'rails_helper'
# RSpec.describe 'タスク管理機能', type: :system do
#   let!(:task) { FactoryBot.create(:task) }
#   # let!(:event) { FactoryBot.create(:event) }
#   # let!(:second_task) { FactoryBot.create(:second_task) }
#   # let!(:third_task) { FactoryBot.create(:third_task) }
#
#   before do
#     # FactoryBot.create(:user)
#     visit new_user_session_path
#     fill_in 'user[email]', with: 'test100@test.com'
#     fill_in 'user[password]', with: 'test100test100'
#     click_button 'ログイン'
#   end
#
#   describe '新規作成機能'  do
#     context 'タスクを新規作成した場合' do
#       it '作成したタスクが表示される' do
#         visit new_event_path
#         fill_in 'event[tasks_attributes][0][work]', with: '種植え'
#         click_button '登録'
#         expect(page).to have_content '種植え'
#       end
#     end
#    end
# end
