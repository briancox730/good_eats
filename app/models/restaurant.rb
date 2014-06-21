class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_one :category

  validates :name, presence: true, uniqueness: true
  validates :address, :city, :state, :zipcode, presence: true

end
