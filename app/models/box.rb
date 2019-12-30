class Box < ApplicationRecord
  belongs_to :admin
  has_many :users, through: :box_users
end
