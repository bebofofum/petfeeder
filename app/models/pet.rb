class Pet < ApplicationRecord
  has_many :feedings, dependent: :destroy
  has_many :users, through: :feedings

  #validations
  validates :name, :species, :diet_requirements, presence: true
  validates :name, length: { minimum: 2 }
  validates :name, uniqueness: true

  #scope method
  def special_diet?
    where(special_needs: true)
  end



end
