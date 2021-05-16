require 'rails_helper'

RSpec.describe Task, type: :model do
  before do
    @task = FactoryBot.build(:task)
  end

  describe '出品登録' do
    context '出品登録できるとき' do
      it 'titleとmatterとstatus_idと
        scheduled_dateとcompletion_dateとprogress_idとflag_idとsupplementが存在すれば登録できる' do
        expect(@task).to be_valid
      end
      it 'completion_dateが空でも登録できる' do
        @task.completion_date = ''
        expect(@task).to be_valid
      end
      it 'supplementが空でも登録できる' do
        @task.supplement = ''
        expect(@task).to be_valid
      end
    end
    context '出品登録できないとき' do
      it 'titleが空では登録できない' do
        @task.title = ''
        @task.valid?
        expect(@task.errors.full_messages).to include("Title can't be blank")
      end
      it 'matterが空では登録できない' do
        @task.matter = ''
        @task.valid?
        expect(@task.errors.full_messages).to include("Matter can't be blank")
      end
      it 'scheduled_dateが空では登録できない' do
        @task.scheduled_date = ''
        @task.valid?
        expect(@task.errors.full_messages).to include("Scheduled date can't be blankz")
      end
      it 'status_idが0では登録できない' do
        @task.status_id = 0
        @task.valid?
        expect(@task.errors.full_messages).to include('Status must be other than 0')
      end
      it 'progress_idが0では登録できない' do
        @task.progress_id = 0
        @task.valid?
        expect(@task.errors.full_messages).to include('Progress must be other than 0')
      end
      it 'flag_idが0では登録できない' do
        @task.flag_id = 0
        @task.valid?
        expect(@task.errors.full_messages).to include('Flag must be other than 0')
      end
    end
  end
end
