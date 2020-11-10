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


end
