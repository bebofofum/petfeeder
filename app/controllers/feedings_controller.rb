class FeedingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_feeding, only: [:show, :edit, :update, :destroy]



  def index
    @feedings = Feeding.all
  end

  def show
  end

  def new
    @feeding = Feeding.new
  end

  def create
    @feeding = Feeding.new(feeding_params)
    if @feeding.save
      redirect_to pet_path(@feeding.pet)
    else
      render 'pets/show'
      # render :new
    end
  end

  def edit
  end

  def update
    if @feeding.update(feeding_params)
      redirect_to feeding_path(@feeding)
    else
      render :edit
    end

  end

  def destroy
    @feeding.destroy
    redirect_to feedings_path
  end

  private

  def feeding_params
    params.require(:feeding).permit(:user_id, :pet_id, :completed, :description, :category)
  end

  def set_feeding
    @feeding = Feeding.find(params[:id])
  end

end
