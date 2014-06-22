class Category < ActiveRecord::Base
  has_many :restaurants

  validates :category, presence: true, uniqueness: true
end
