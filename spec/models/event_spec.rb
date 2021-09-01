require 'rails_helper'
RSpec.describe Event, type: :model do
  # let(:user) { FactoryBot.create(:user) }
  # let(:event) { create(:event, user_id: user.id) }

  # before do
  #   @user = User.create(name: "aaa", email: "aaa@aaa.com")
  # end

  describe 'validation check' do
    # context 'if a content is blank' do
      it '内容が未入力の場合バリデーションにひかっかる' do
        event = FactoryBot.build(:event)
        #user = FactoryBot.create(:user)
        # event = Event.new(content: "")
        # task = Task.new(work: "aa")
        # event = Event.new(content: '', start_date: DateTime.now, end_date: DateTime.now + 10, user_id: @user)
        event.title = nil
        expect(event).not_to be_valid
        # expect(event.valid?).to eq(false)

      end

      it '内容が入力すみの場合バリデーションに通る' do
        event = FactoryBot.build(:event)
        # event = Event.new(content: 'aa', start_date: DateTime.now, end_date: DateTime.now + 10, user_id: @user)
        # task = Task.new(work: 'aaa' )
        # event.tasks.new(work:'aaa')
        # event.tasks = Task.new(work: 'aaa')
        # event.work = “aaa"

        # event.content = nil
        # binding.pry
        # expect(event.valid?).to eq(true)
        expect(event).to be_valid

      end
    # end
  end

  describe '開始日と終了日のテスト' do
    context '終了日があとの場合' do
      it 'バリデーションに通る' do
        event = FactoryBot.build(:event)
        # event = Event.new(content: 'aa', start_date: DateTime.now, end_date: DateTime.now + 10)
        # event.content = nil
        # expect(event.valid?).to eq(false)
        event.end_date += 10
        expect(event).to be_valid
      end
    end

    context '終了日が前の場合' do
      it 'バリデーションにひっかかる' do
        event = FactoryBot.build(:event)
        # event = Event.new(content: 'aa', start_date: DateTime.now + 10, end_date: DateTime.now)
        # event.end_date -= 20
        datetime = DateTime.now - 20
        event.end_date = datetime
        expect(event).not_to be_valid
        # expect(event.valid?).to eq(false)
      end
    end
  end
end
