require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validation check' do
    context 'if a content is blank' do
      it 'validation result will be invalid' do
        task = Task.new(work: "")
        expect(task).to be_invalid
      end

      it 'バリデーションに通る' do
        event = FactoryBot.create(:event)
        task = Task.new(work: "aa")
        task.event_id = event.id
        # binding.pry
        expect(task).to be_valid
      end
    end
  end
end
