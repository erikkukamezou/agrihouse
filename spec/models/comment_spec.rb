require 'rails_helper'

RSpec.describe Comment, type: :model do
  # let(:user) { FactoryBot.create(:user) }
  # let(:event) { create(:event, user_id: user.id) }

  describe 'validation check' do
    context 'if a content is blank' do
      it 'validation result will be invalid' do
        #user = FactoryBot.create(:user)
        # event = Event.new(content: "")
        # task = Task.new(work: "aa")
        comment = Comment.new(comment_content: "")

        # cost = Cost.new(soil: "", fertilizer: "4", seed: "5", sale: "5")
        comment.comment_content = nil
        expect(comment.valid?).to eq(false)
        # event.valid?
        # expect(event).to be_invaild
        # expect(event.errors[:content]).to include('Can not be blank')

      end
    end
  end
end
