class Pet < ApplicationRecord
  has_many :feedings, dependent: :destroy
  has_many :users, through: :feedings

  #validations
  validates :name, :species, :diet_requirements, presence: true
  validates :name, length: { minimum: 2 }
  validates :name, uniqueness: true


  #scope method

  # def self.special_diet?
  #   where(special_needs: :true)
  # end

  # def self.by_species(species_kind)
  #   where(species: species_kind)
  # end

  # def self.fed
  #   self.includes(:feedings).where(feedings: { completed: :true })
  # end





end
