class Product < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true ,length: {minimum:10}
  validates :quantity, presence:true

end
