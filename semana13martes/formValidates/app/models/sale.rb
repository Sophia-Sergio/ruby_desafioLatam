class Sale < ApplicationRecord
  validates :cod, :uniqueness => true
  validates :detail, :presence => true
  validates :category, :numericality =>  { 
    :greater_than => 0, 
    :less_than => 6 } 
  validates :value, :numericality => { 
    :only_integer => true }
  validates :discount, :numericality =>  { 
    :greater_than => 0, 
    :less_than => 41 }
end
