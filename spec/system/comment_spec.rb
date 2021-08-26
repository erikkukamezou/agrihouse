require 'rails_helper'
RSpec.describe 'コメント機能', type: :system do
  let!(:comment) { FactoryBot.create(:comment) }
  let!(:second_comment) { FactoryBot.create(:second_comment) }
  let!(:third_comment) { FactoryBot.create(:third_comment) }

  before do
    visit new_user_session_path
    fill_in 'user[email]', with: 'test100@test.com'
    fill_in 'user[password]', with: 'test100test100'
    click_button 'ログイン'
  end

  describe 'コメント投稿機能'  do
    context '投稿にコメントした場合' do
      it '投稿したコメントが表示される' do
        visit dairies_path(:dairy)
        fill_in 'comment[comment_content]', with: 'yes'
        click_button '送信する'
        expect(page).to have_content 'yes'
      end
    end

    context '投稿したコメントを削除ボタンを押した場合' do
      it 'コメントを削除できる' do
        visit dairies_path(:dairy)
        click_button '削除'
        expect(page).not_to have_content 'yes'
      end
    end
  end
end
