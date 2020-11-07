class Pet < ApplicationRecord
  has_many :feedings
  has_many :users, through: :feedings

  #validations
  validates :name, :type, presence: true


  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def pet_params
    params.require(:artist).permit(:name)
  end

end
