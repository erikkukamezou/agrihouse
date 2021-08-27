require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validation check' do
    context 'if a content is blank' do
      it 'validation result will be invalid' do
        task = Task.new(work: "")
        expect(task).to be_invalid
      end
    end
  end
end
