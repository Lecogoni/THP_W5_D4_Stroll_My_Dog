class Dog < ApplicationRecord
  has_many :strolldogs
  has_many :strolls, through: :strolldogs

  belongs_to :city
end
