require 'rails_helper'
RSpec.describe Event, type: :model do
  # let(:user) { FactoryBot.create(:user) }
  # let(:event) { create(:event, user_id: user.id) }

  describe 'validation check' do
    context 'if a content is blank' do
      it 'validation result will be invalid' do
        #user = FactoryBot.create(:user)
        # event = Event.new(content: "")
        # task = Task.new(work: "aa")
        event = Event.new(content: '', start_date: DateTime.now, end_date: DateTime.now + 10)
        event.content = nil
        expect(event.valid?).to eq(false)

        # event.valid?
        # expect(event).to be_invaild
        # expect(event.errors[:content]).to include('Can not be blank')

      end
    end
  end
end
