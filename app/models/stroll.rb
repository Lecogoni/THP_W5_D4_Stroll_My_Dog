class Stroll < ApplicationRecord
  has_many :strolldogs
  has_many :dogs, through: :strolldogs

  has_many :strolldogsitters
  has_many :dogsitters, through: :strolldogsitters
end
