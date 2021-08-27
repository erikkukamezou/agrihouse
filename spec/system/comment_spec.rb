require 'rails_helper'
RSpec.describe 'コメント機能', type: :system do
  # let!(:comment) { FactoryBot.create(:comment) }
  let!(:dairy) { FactoryBot.create(:dairy) }
  let!(:user) { FactoryBot.create(:user, email: 'aaa@aaa.com') }
  # let!(:second_comment) { FactoryBot.create(:second_comment) }
  # let!(:third_comment) { FactoryBot.create(:third_comment) }

  before do
    visit new_user_session_path
    fill_in 'user[email]', with: 'test100@test.com'
    fill_in 'user[password]', with: 'test100test100'
    click_button 'ログイン'
  end

  describe 'コメント投稿機能'  do
    context '投稿にコメントした場合' do
      it '投稿にコメントが投稿される' do
        # visit users_path
        # all(".js-accordion-title")[5].click
        # click_on '観察日記'
        # click_link '日記'
        visit dairies_path
        click_link '詳細'
        # visit dairies_path(:dairy)
        fill_in 'comment[comment_content]', with: 'こんにちは'
        # fill_in :comment_content, with: "こんにちは"
        click_button 'commit'
        expect(page).to have_content 'こんにちは'
      end
    end

    context '投稿したコメントを削除ボタンを押した場合' do
      it 'コメントを削除できる' do
        visit dairies_path(:dairy)
        click_link '削除'
        expect(page).not_to have_content 'こんにちは'
      end
    end
  end
end
