class Feeding < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :category, inclusion: { in: %w(Morning Evening),
  message: "Must be either Morning or Evening" }
  validates :description, presence: true
  

  def user_name_normalize
    user.name.capitalize
  end

  def pet_name
    pet.name
  end

  def self.by_species(species_kind)
    self.includes(:pet).where(pets: { species: species_kind })
  end

  def self.fed
    self.where(completed: :true)

  end



  

  


end
