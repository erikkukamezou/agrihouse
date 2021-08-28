require 'rails_helper'
RSpec.describe Comment, type: :model do
  describe 'validation check' do
    context 'if a content is blank' do
      it 'validation result will be invalid' do
        comment = Comment.new(comment_content: "")
        comment.comment_content = nil
        expect(comment.valid?).to eq(false)
      end
    end
  end
end
