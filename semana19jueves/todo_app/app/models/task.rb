class Task < ApplicationRecord
  has_many :doings
  has_many :users, through: :doings
end
