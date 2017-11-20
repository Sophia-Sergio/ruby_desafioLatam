class Project < ApplicationRecord
  has_many :distributions
  has_many :workers, through: :distributions
end
