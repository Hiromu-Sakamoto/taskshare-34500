class Task < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status
  belongs_to :progress
  belongs_to :flag

  with_options presence: true do
    validates :title
    validates :matter
    validates :scheduled_date
    with_options numericality: { other_than: 0 } do
      validates :status_id
      validates :progress_id
      validates :flag_id
    end
  end
end
