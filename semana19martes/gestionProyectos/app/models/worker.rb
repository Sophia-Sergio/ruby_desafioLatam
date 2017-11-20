class Worker < ApplicationRecord
  has_many :distributions
  has_many :projects, through: :distributions

end
