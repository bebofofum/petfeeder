class Feeding < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :category, inclusion: { in: %w(Morning Evening),
  message: "Specify either Morning or Evening" }

end
