class VetsController < ApplicationController

  def vet_params
    params.require(:vet).permit(:name, :specialty)
  end

  def index
    @vet = Vet.all
  end

  def show
    @vet = Vet.find(params[:id])
  end

  def new
    @vet = Vet.new
  end

  def create
    @vet = Vet.new(vet_params)
    if @vet.valid?
      @vet.save
    else
      render "new"
    end
  end

  def edit
    @vet = Vet.find(params[:id])
  end

  def update
    @vet = Vet.find(params[:id])
    @vet.update_attributes(vet_params)
  end

  def destroy
    Vet.find(params[:id]).destroy
    flash[:alert] = "Vet deleted"
    redirect_to vets_path
  end

end
