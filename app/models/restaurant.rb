class Restaurant < ActiveRecord::Base
  has_many :reviews
  belongs_to :category

  validates :name, presence: true, uniqueness: true
  validates :address, :city, :state, :zipcode, presence: true

end
