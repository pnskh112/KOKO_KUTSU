class BoxUser < ApplicationRecord
  has_many :boxes
  has_many :users
end
