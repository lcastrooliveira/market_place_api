class Product < ActiveRecord::Base
  belongs_to :user
  validates :title, :user, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }, presence: true
end
