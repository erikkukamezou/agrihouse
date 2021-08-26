require 'rails_helper'
RSpec.describe Comment, type: :model do
  describe 'バリデーションテスト' do
    context 'comment_contentが未入力の場合' do
      it 'バリデーションにひっかる' do
        comment = Comment.new(comment_content: '')
        click_button '送信する'
        expect(comment).not_to be_vaild
      end
    end
  end
end
