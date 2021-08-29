require 'rails_helper'
RSpec.describe 'ユーザーの登録', type: :system do
  describe 'ユーザー登録機能' do
    context 'ユーザーを新規登録した場合' do
      it '登録したユーザーが表示されること' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'aaa'
        fill_in 'user[email]', with: 'aaa@aaa.com'
        fill_in 'user[password]', with: 'aaaaaa'
        fill_in 'user[password_confirmation]', with: 'aaaaaa'
        click_button 'Sign up'
        expect(page).to have_content 'aaa'
      end
    end

      # context 'ユーザーがログインせずにユーザーページの飛ぼうとしたとき' do
      #   it 'ログイン画面に遷移する' do
      #     visit users_path
      #     expect(page).to have_content '登録'
      #     expect(page).to have_content 'ログイン'
      #   end
      # end
    end

    describe 'ログイン・ログアウト機能' do
      before do
        @user1 = FactoryBot.create(:user)
        @user2 = FactoryBot.create(:second_user)
        @user3 = FactoryBot.create(:third_user)
      end
      context 'ユーザーが登録されている場合' do
        it 'ログインができる' do
          visit new_user_session_path
          fill_in 'user[email]', with: 'test100@test.com'
          fill_in 'user[password]', with: 'test100test100'
          click_button 'commit'
          expect(page).to have_content 'test100'
          # expect(current_path).to eq user_path
          # expect(current_path).to eq user_path(current_user.id)
        end

        # it 'ログアウトができる' do
        #   visit new_user_session_path
        #   fill_in 'user[email]', with: 'test100test.com'
        #   fill_in 'user[password]', with: 'test100test100'
        #   click_button 'commit'
        #   # expect(page).to have_content 'test100'
        #   # visit usesr_path(id: @user.id)
        #   click_button 'ログアウト'
        #   expect(current_path).to eq root_path
        #   # expect(page).to have_content 'sign up'
        # end
      end
    end

    describe '管理者画面のテスト' do
      before do
        @user1 = FactoryBot.create(:user)
        @user2 = FactoryBot.create(:second_user)
        @user3 = FactoryBot.create(:third_user)
      end
      context '管理者が登録されている場合' do
        it '管理者は管理画面にアクセスできる' do
          visit new_user_session_path
          fill_in 'user[email]', with: 'test103@test.com'
          fill_in 'user[password]', with: 'test103test103'
          click_button 'ログイン'
          visit rails_admin_path
          # click_link '管理者ページ'
          expect(current_path).to eq rails_admin_path
          # expect(page).to have_content 'ユーザー一覧'
        end
      end
      context '一般ユーザの場合' do
        it '管理画面にアクセスできない' do
          # user = users('fan_bingbing')

          visit new_user_session_path
          fill_in 'user[email]', with: 'test102@test.com'
          fill_in 'user[password]', with: 'test102test102'
          click_button 'ログイン'
          ability = Ability.new(@user2)
          assert ability.cannot?(:name, User.new)
          # visit rails_admin_path
          # expect(current_path).not_to eq rails_admin_path
          # expect(page).not_to have_content 'サイト管理'
        end
      end

      context 'ゲストログインを選んだ場合' do
        it 'ゲストログインとして入力なしでログインできる' do
          visit root_path
          click_button 'ゲストログイン（閲覧用）'

          all(".js-accordion-title")[0].click
          click_on "マイページ"
          expect(page).to have_content "ゲストさん"
        end
      end

    end


  end
