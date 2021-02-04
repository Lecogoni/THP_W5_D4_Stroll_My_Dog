class Dogsitter < ApplicationRecord
  has_many :strolldogsitters
  has_many :strolls, through: :strolldogsitters
  belongs_to :city
end
