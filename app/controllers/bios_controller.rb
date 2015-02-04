class BiosController < ApplicationController

  def index
    @bio = Bio.last
  end

  def new
    @bio = Bio.new
  end

  def create
    @bio = Bio.new(bio_params)

    if @bio.save
      redirect_to bios_path
    else
      redirect_to @bio
  end

  def edit
    @bio = Bio.find(params[:id])
  end

  def update
    @bio = Bio.find(params[:id])
    if @bio.update_attributes(params.require(:bio).permit(:content, :phone, :email))
      redirect_to bios_path
    else
      render 'edit'
  end

  def bio_params
    params.require(:bio).permit(:content, :phone, :email)
  end

end
