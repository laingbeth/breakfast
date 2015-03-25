class CerealsController < ApplicationController

  def index
    @cereals = Cereal.all
  end

  def show
    @cereal = Cereal.find(params[:id])
  end

  def new
    @cereal = Cereal.new
  end

  def create
    @cereal = Cereal.new(cereal_params)
    if @cereal.save
      redirect_to cereals_path
    else
      render 'new'  
    end  
  end

  def edit
    @cereal = Cereal.find(params[:id])
  end

  def update
    @cereal = Cereal.find(params[:id])
    if @cereal.update_attributes(params.require(:cereal).permit(:name, :category, :quantity))
      redirect_to cereal_path
    else
      render 'edit'
    end  
  end

  def destroy
    @cereal = Cereal.find(params[:id])
    @cereal.destroy
    redirect_to cereals_path
  end

  private

    def cereal_params
      params.require(:cereal).permit(:name, :category, :quantity)
    end
end

