class FeedingsController < ApplicationController

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

  def feeding_params
    params.require(:feeding).permit(:user_id, :pet_id, :completed, :description, :category)
  end
end
