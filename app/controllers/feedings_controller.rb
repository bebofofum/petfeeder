class FeedingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_feeding, only: [:show, :edit, :update, :destroy]



  def index
    if params[:pet_id]
      @feedings = Pet.find_by_id(params[:pet_id]).feedings
    else
      @feedings = Feeding.all
    end
    if params[:filter_by_species]
      clean_filter_species
      species = clean_filter_species
      completed_var = params[:filter_by_been_fed]
    
      @feedings = @feedings.filtered(species: species, complete: completed_var)
      # species = params[:filter_by_species].split('_').map(&:capitalize).join(' ')
      # filter_options(species)
    end
    
  end

  def show
    # if params[:pet_id]
    #   @feeding = Pet.find(params[:pet_id]).feedings
    # end

  end

  def new
    @pet = Pet.find_by_id(params[:pet_id])
    if @pet
      @feeding = @pet.feedings.build
    else
      @feeding = Feeding.new
    end
    
  end

  def create
    @feeding = Feeding.new(feeding_params)
    @pet = @feeding.pet
    if @feeding.save
      redirect_to pet_path(@pet)
    else
      # render 'pets/show'
      render :new
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


  def clean_filter_species
    params[:filter_by_species].split('_').map(&:capitalize).join(' ')
  end

  def filter_options(species)
    if params[:filter_by_species] != ''
      @feedings = @feedings.by_species(species)
    end
    if params[:filter_by_been_fed] == "completed"
      @feedings = @feedings.fed
    end
  end



end
