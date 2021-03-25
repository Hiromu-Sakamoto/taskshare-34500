class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tasks

  with_options presence: true do
    validates :name
    validates :occupation
    validates :position
  end
end
