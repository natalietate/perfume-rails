class PerfumesController < ApplicationController

  # GET '/perfumes'
  def index
    @perfumes = Perfume.all
  end

  # GET '/perfumes/new'
  def new
    @perfume = Perfume.new
  end

  # POST '/perfumes'
  def create
    @perfume = Perfume.new(perfume_params)
    if @perfume.save
      redirect_to @perfume, notice: "You did it!"
    else
      render :new #go back to the form
    end
  end


  # GET '/perfumes/:id'
  def show
    @perfume = Perfume.find_by_id(params[:id])
  end

  private
  def perfume_params
    params.require(:perfume).permit(:name, :maker)
    # requiring that employee hash and then allowing name and title to be called
  end
end
