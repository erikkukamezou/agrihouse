require 'rails_helper'
RSpec.describe Comment, type: :model do

  # before do
  #   @comment = create(:comment)
  # end

  describe 'validation check' do
    context 'if a content is blank' do
      it 'バリデーションにひっかる' do
        comment = FactoryBot.build(:comment)
        # comment = Comment.new(comment_content: "")
        comment.comment_content = nil
        # expect(comment.valid?).to eq(false)
        expect(comment).not_to be_valid
      end
      it 'バリデーションに通る' do
        # binding.pry
        user = FactoryBot.create(:second_user)
        dairy = FactoryBot.create(:dairy)
        comment = FactoryBot.build(:comment)
        comment.user_id = user.id
        comment.dairy_id = dairy.id

        # comment = Comment.new(comment_content: "ss")
        # binding.pry
        # comment.comment_content = ss
        # expect(page).to have_content 'aa'
        # expect(comment.valid?).to eq(false)
        expect(comment).to be_valid
      end
    end
  end
end
