class Box < ApplicationRecord
  belongs_to :admin
  # belongs_to :user
  has_many :box_users
end
