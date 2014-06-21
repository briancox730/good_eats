class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_one :category

  validates :name, presence: true, unique: true

end
